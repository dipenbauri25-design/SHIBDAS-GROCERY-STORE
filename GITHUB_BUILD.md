# Shibdas Grocery Store — GitHub Cloud Build

This project includes a GitHub Actions workflow at:
`.github/workflows/android-apk.yml`

## Phone-only build steps

1. Create a GitHub repository, e.g. `shibdas-grocery-store`.
2. Upload all files/folders from this project to the repository root.
3. Open the repository's **Actions** tab.
4. Select **Build Android APK**.
5. Tap **Run workflow** (or push to `main`).
6. Wait for the workflow to finish.
7. Open the successful workflow run.
8. Under **Artifacts**, download `ShibdasGroceryStore-debug-apk`.
9. Extract the downloaded artifact and install `app-debug.apk` on Android.

## Note
This workflow creates a DEBUG APK for testing. A release APK for Play Store distribution
should use a proper signing key stored in GitHub Actions Secrets.
