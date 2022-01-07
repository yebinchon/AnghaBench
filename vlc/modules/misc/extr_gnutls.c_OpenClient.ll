; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/extr_gnutls.c_OpenClient.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/extr_gnutls.c_OpenClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }

@.str = private unnamed_addr constant [32 x i8] c"cannot allocate credentials: %s\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"gnutls-system-trust\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"cannot load trusted Certificate Authorities from %s: %s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"loaded %d trusted CAs from %s\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"gnutls-dir-trust\00", align 1
@GNUTLS_X509_FMT_PEM = common dso_local global i32 0, align 4
@GNUTLS_VERIFY_ALLOW_X509_V1_CA_CRT = common dso_local global i32 0, align 4
@gnutls_ClientOps = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @OpenClient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenClient(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = call i32 @VLC_OBJECT(%struct.TYPE_8__* %7)
  %9 = call i32 @gnutls_Banner(i32 %8)
  %10 = call i32 @gnutls_certificate_allocate_credentials(i32* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @gnutls_strerror(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @msg_Err(%struct.TYPE_8__* %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %20, i32* %2, align 4
  br label %76

21:                                               ; preds = %1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = call i64 @var_InheritBool(%struct.TYPE_8__* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @gnutls_certificate_set_x509_system_trust(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @gnutls_strerror(i32 %32)
  %34 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @msg_Err(%struct.TYPE_8__* %31, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  br label %39

35:                                               ; preds = %25
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @msg_Dbg(%struct.TYPE_8__* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %35, %30
  br label %40

40:                                               ; preds = %39, %21
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = call i8* @var_InheritString(%struct.TYPE_8__* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %66

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* @GNUTLS_X509_FMT_PEM, align 4
  %49 = call i32 @gnutls_certificate_set_x509_trust_dir(i32 %46, i8* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @gnutls_strerror(i32 %55)
  %57 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @msg_Err(%struct.TYPE_8__* %53, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i8* %54, i32 %56)
  br label %63

58:                                               ; preds = %45
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @msg_Dbg(%struct.TYPE_8__* %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %60, i8* %61)
  br label %63

63:                                               ; preds = %58, %52
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @free(i8* %64)
  br label %66

66:                                               ; preds = %63, %40
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @GNUTLS_VERIFY_ALLOW_X509_V1_CA_CRT, align 4
  %69 = call i32 @gnutls_certificate_set_verify_flags(i32 %67, i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store i32* @gnutls_ClientOps, i32** %71, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %66, %13
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @gnutls_Banner(i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_8__*) #1

declare dso_local i32 @gnutls_certificate_allocate_credentials(i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_8__*, i8*, i8*, ...) #1

declare dso_local i32 @gnutls_strerror(i32) #1

declare dso_local i64 @var_InheritBool(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @gnutls_certificate_set_x509_system_trust(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_8__*, i8*, i32, i8*) #1

declare dso_local i8* @var_InheritString(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @gnutls_certificate_set_x509_trust_dir(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @gnutls_certificate_set_verify_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
