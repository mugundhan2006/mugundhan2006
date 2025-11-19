<!-- செந்தூர் & கோ. கட்டுமானப் பொருள் விசாரணை செயலி -->
<html lang="ta">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>செந்தூர் & கோ. விசாரணை செயலி</title>
    <!-- Load Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Custom styles for mobile responsiveness and design */
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f7f7f7;
        }
        .card {
            background-color: white;
            box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
        }
        /* Custom color matching the banner's magenta */
        .color-magenta { background-color: #E6007A; }
    </style>
</head>
<body class="p-4 flex items-center justify-center min-h-screen">

    <div id="app" class="w-full max-w-md">
        <div class="card p-6 rounded-xl space-y-6">

            <h1 class="text-3xl font-extrabold text-center text-gray-800">செந்தூர் & கோ.</h1>
            <p class="text-center text-lg text-gray-600">கட்டுமானப் பொருள் விசாரணை</p>

            <!-- Contact Information Section -->
            <div class="space-y-2 pt-2 border-t border-gray-100">
                <p class="text-sm font-semibold text-gray-700">உடனடி உதவிக்கு அழைக்க:</p>
                <div class="flex flex-col space-y-3">
                    <a href="tel:9788003393" class="w-full text-center py-3 rounded-lg font-bold text-white transition duration-200 bg-emerald-600 hover:bg-emerald-700">
                        📞 97880 03393
                    </a>
                    <a href="tel:9865372814" class="w-full text-center py-3 rounded-lg font-bold text-white transition duration-200 bg-emerald-600 hover:bg-emerald-700">
                        📞 98653 72814
                    </a>
                </div>
            </div>

            <!-- Inquiry Form -->
            <form id="inquiryForm" class="space-y-4 pt-4 border-t border-gray-100">
                <h2 class="text-xl font-semibold text-gray-800">பொருள் விசாரணைப் படிவம்</h2>

                <!-- Customer Name -->
                <div>
                    <label for="name" class="block text-sm font-medium text-gray-700 mb-1">உங்கள் பெயர்</label>
                    <input type="text" id="name" name="name" required placeholder="உங்கள் பெயரை உள்ளிடவும்"
                           class="w-full p-3 border border-gray-300 rounded-lg focus:ring-sky-500 focus:border-sky-500">
                </div>
                
                <!-- Phone Number (New Field) -->
                <div>
                    <label for="phone" class="block text-sm font-medium text-gray-700 mb-1">கைபேசி எண்</label>
                    <input type="tel" id="phone" name="phone" required placeholder="10 இலக்க கைபேசி எண்ணை உள்ளிடவும்"
                           pattern="[0-9]{10}" title="10 இலக்க எண் தேவை"
                           class="w-full p-3 border border-gray-300 rounded-lg focus:ring-sky-500 focus:border-sky-500">
                </div>

                <!-- Material Selection -->
                <div>
                    <label for="material" class="block text-sm font-medium text-gray-700 mb-1">தேவைப்படும் பொருள்</label>
                    <select id="material" name="material" required
                            class="w-full p-3 border border-gray-300 rounded-lg focus:ring-sky-500 focus:border-sky-500 bg-white">
                        <option value="" disabled selected>ஒரு பொருளைத் தேர்ந்தெடுக்கவும்...</option>
                        <option value="Shuttering Sheets (சென்டரிங் சீட்)">Shuttering Sheets (சென்டரிங் சீட்)</option>
                        <option value="Plain Sheets (பிளைன் சீட்)">Plain Sheets (பிளைன் சீட்)</option>
                        <option value="Column Box (காலம் பாக்ஸ்)">Column Box (காலம் பாக்ஸ்)</option>
                        <option value="Scaffolding (குதிரை, ஷீ, ஸ்பேன்)">Scaffolding (குதிரை, ஷீ, ஸ்பேன்)</option>
                        <option value="Jacks (ஜாக்கி)">Jacks (ஜாக்கி)</option>
                        <option value="Earth Rammer (எர்த்ரோமர்)">Earth Rammer (எர்த்ரோமர்)</option>
                        <option value="Vibrator (வைப்ரேட்டர்)">Vibrator (வைப்ரேட்டர்)</option>
                        <option value="Lift Machine (லிப்ட் மெஷின்)">Lift Machine (லிப்ட் மெஷின்)</option>
                        <option value="Wheelbarrow (தள்ளு வண்டி)">Wheelbarrow (தள்ளு வண்டி)</option>
                        <option value="Other/Custom">மற்றவை / தனிப்பயன் (விவரங்களைக் குறிப்பிடவும்)</option>
                    </select>
                </div>

                <!-- Quantity/Details -->
                <div>
                    <label for="details" class="block text-sm font-medium text-gray-700 mb-1">அளவு / குறிப்பிட்ட விவரங்கள்</label>
                    <textarea id="details" name="details" rows="3" required placeholder="எ.கா. 50 சென்டரிங் சீட்டுகள், அல்லது விரிவான கோரிக்கை"
                              class="w-full p-3 border border-gray-300 rounded-lg focus:ring-sky-500 focus:border-sky-500"></textarea>
                </div>

                <!-- Submit Button -->
                <button type="submit"
                        class="w-full py-4 color-magenta text-white rounded-lg font-extrabold text-xl transition duration-300 hover:opacity-90">
                    ✉️ மின்னஞ்சல் விசாரணையை உருவாக்கவும்
                </button>
            </form>

            <!-- Message Box for error/success -->
            <div id="messageBox" class="hidden p-3 rounded-lg text-sm font-medium text-center"></div>

        </div>
    </div>

    <script type="module">
        // Set the target email address as requested by the user
        const RECIPIENT_EMAIL = "mugundhanakash1976@gmail.com";
        const form = document.getElementById('inquiryForm');
        const messageBox = document.getElementById('messageBox');

        function displayMessage(text, isError = false) {
            messageBox.textContent = text;
            messageBox.className = `p-3 rounded-lg text-sm font-medium text-center ${isError ? 'bg-red-100 text-red-700' : 'bg-green-100 text-green-700'}`;
            messageBox.classList.remove('hidden');
        }

        form.addEventListener('submit', function(e) {
            e.preventDefault();
            messageBox.classList.add('hidden'); // Clear previous messages

            const name = document.getElementById('name').value.trim();
            const phone = document.getElementById('phone').value.trim(); // Get new phone field value
            const material = document.getElementById('material').value;
            const details = document.getElementById('details').value.trim();

            if (!name || !phone || !material || !details) {
                displayMessage("தேவையான அனைத்துப் புலங்களையும் (பெயர், கைபேசி எண், பொருள், விவரங்கள்) நிரப்பவும்.", true);
                return;
            }

            // 1. Construct the Subject
            // Subject is kept in English/Transliteration for better email filtering/recognition
            const subject = encodeURIComponent(`Material Inquiry from ${name} - ${material}`);

            // 2. Construct the Body (Kept mostly in English for professional business communication)
            let bodyContent = `Dear Senthoor & Co.,\n\n`;
            bodyContent += `I am writing to inquire about the following material requirements:\n\n`;
            bodyContent += `Material: ${material}\n`;
            bodyContent += `Details/Quantity: ${details}\n\n`;
            bodyContent += `My Name: ${name}\n`;
            bodyContent += `Contact Phone: ${phone}\n\n`; // Include phone number here
            bodyContent += `Please respond with availability and pricing details. Thank you.`;

            const body = encodeURIComponent(bodyContent);

            // 3. Construct the mailto: URL
            const mailtoUrl = `mailto:${RECIPIENT_EMAIL}?subject=${subject}&body=${body}`;

            // Open the user's default email client
            try {
                window.open(mailtoUrl, '_self');
                displayMessage("முன் நிரப்பப்பட்ட விசாரணையுடன் உங்கள் மின்னஞ்சல் செயலி திறக்கிறது. தயவுசெய்து சரிபார்த்து அனுப்பவும்.", false);

                // Optional: Clear the form after successful generation
                // form.reset();

            } catch (error) {
                // This catch block is generally for unexpected errors, as mailto always tries to open.
                console.error("Mailto link failed:", error);
                displayMessage("உங்கள் மின்னஞ்சல் செயலியைத் திறக்க முடியவில்லை. தயவுசெய்து பெறுநரின் மின்னஞ்சலை கைமுறையாக நகலெடுக்கவும்: " + RECIPIENT_EMAIL, true);
            }
        });

        // Firebase Setup (Mandatory in this environment, even if not strictly used for this simple app)
        import { initializeApp } from "https://www.gstatic.com/firebasejs/11.6.1/firebase-app.js";
        import { getAuth, signInAnonymously, signInWithCustomToken } from "https://www.gstatic.com/firebasejs/11.6.1/firebase-auth.js";
        import { getFirestore, setLogLevel } from "https://www.gstatic.com/firebasejs/11.6.1/firebase-firestore.js";

        // Initialize Firebase
        const appId = typeof __app_id !== 'undefined' ? __app_id : 'default-app-id';
        let firebaseConfig;
        try {
            firebaseConfig = JSON.parse(__firebase_config);
        } catch (e) {
            console.error("Failed to parse firebase config.");
            firebaseConfig = {};
        }

        const app = initializeApp(firebaseConfig);
        const db = getFirestore(app);
        const auth = getAuth(app);
        setLogLevel('debug'); // Enable logging for debugging

        // Authenticate user
        async function authenticate() {
            try {
                // Check if the custom token is defined and sign in, otherwise sign in anonymously
                if (typeof __initial_auth_token !== 'undefined') {
                    await signInWithCustomToken(auth, __initial_auth_token);
                } else {
                    await signInAnonymously(auth);
                }
                console.log("Firebase initialized and user signed in:", auth.currentUser.uid);
            } catch (error) {
                console.error("Firebase authentication failed:", error);
            }
        }

        authenticate();

    </script>
</body>
</html>