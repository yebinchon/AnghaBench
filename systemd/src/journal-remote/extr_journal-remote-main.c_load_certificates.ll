; ModuleID = '/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-remote-main.c_load_certificates.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-remote-main.c_load_certificates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_key = common dso_local global i64 0, align 8
@PRIV_KEY_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to read key from file '%s': %m\00", align 1
@arg_cert = common dso_local global i64 0, align 8
@CERT_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to read certificate from file '%s': %m\00", align 1
@arg_trust_all = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Certificate checking disabled.\00", align 1
@arg_trust = common dso_local global i64 0, align 8
@TRUST_FILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to read CA certificate file '%s': %m\00", align 1
@arg_listen_raw = common dso_local global i64 0, align 8
@arg_listen_http = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"Option --trust makes all non-HTTPS connections untrusted.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i8**)* @load_certificates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_certificates(i8** %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load i64, i64* @arg_key, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @PRIV_KEY_FILE, align 4
  %14 = sext i32 %13 to i64
  br label %15

15:                                               ; preds = %12, %11
  %16 = phi i64 [ %9, %11 ], [ %14, %12 ]
  %17 = trunc i64 %16 to i32
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @read_full_file(i32 %17, i8** %18, i32* null)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  %24 = load i64, i64* @arg_key, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @PRIV_KEY_FILE, align 4
  %29 = sext i32 %28 to i64
  br label %30

30:                                               ; preds = %27, %26
  %31 = phi i64 [ %24, %26 ], [ %29, %27 ]
  %32 = call i32 (i32, i8*, ...) @log_error_errno(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %31)
  store i32 %32, i32* %4, align 4
  br label %104

33:                                               ; preds = %15
  %34 = load i64, i64* @arg_cert, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @CERT_FILE, align 4
  %39 = sext i32 %38 to i64
  br label %40

40:                                               ; preds = %37, %36
  %41 = phi i64 [ %34, %36 ], [ %39, %37 ]
  %42 = trunc i64 %41 to i32
  %43 = load i8**, i8*** %6, align 8
  %44 = call i32 @read_full_file(i32 %42, i8** %43, i32* null)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load i32, i32* %8, align 4
  %49 = load i64, i64* @arg_cert, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @CERT_FILE, align 4
  %54 = sext i32 %53 to i64
  br label %55

55:                                               ; preds = %52, %51
  %56 = phi i64 [ %49, %51 ], [ %54, %52 ]
  %57 = call i32 (i32, i8*, ...) @log_error_errno(i32 %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  store i32 %57, i32* %4, align 4
  br label %104

58:                                               ; preds = %40
  %59 = load i64, i64* @arg_trust_all, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @log_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %89

63:                                               ; preds = %58
  %64 = load i64, i64* @arg_trust, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @TRUST_FILE, align 4
  %69 = sext i32 %68 to i64
  br label %70

70:                                               ; preds = %67, %66
  %71 = phi i64 [ %64, %66 ], [ %69, %67 ]
  %72 = trunc i64 %71 to i32
  %73 = load i8**, i8*** %7, align 8
  %74 = call i32 @read_full_file(i32 %72, i8** %73, i32* null)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %70
  %78 = load i32, i32* %8, align 4
  %79 = load i64, i64* @arg_trust, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @TRUST_FILE, align 4
  %84 = sext i32 %83 to i64
  br label %85

85:                                               ; preds = %82, %81
  %86 = phi i64 [ %79, %81 ], [ %84, %82 ]
  %87 = call i32 (i32, i8*, ...) @log_error_errno(i32 %78, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %86)
  store i32 %87, i32* %4, align 4
  br label %104

88:                                               ; preds = %70
  br label %89

89:                                               ; preds = %88, %61
  %90 = load i64, i64* @arg_listen_raw, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i64, i64* @arg_listen_http, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %92, %89
  %96 = load i8**, i8*** %7, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* @EINVAL, align 4
  %101 = call i32 @SYNTHETIC_ERRNO(i32 %100)
  %102 = call i32 (i32, i8*, ...) @log_error_errno(i32 %101, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  store i32 %102, i32* %4, align 4
  br label %104

103:                                              ; preds = %95, %92
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %99, %85, %55, %30
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @read_full_file(i32, i8**, i32*) #1

declare dso_local i32 @log_error_errno(i32, i8*, ...) #1

declare dso_local i32 @log_info(i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
