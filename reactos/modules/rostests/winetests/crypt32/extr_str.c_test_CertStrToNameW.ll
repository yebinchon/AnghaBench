; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_str.c_test_CertStrToNameW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_str.c_test_CertStrToNameW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i32 }

@test_CertStrToNameW.bogusW = internal constant [6 x i8] c"bogus\00", align 1
@test_CertStrToNameW.fooW = internal constant [6 x i8] c"foo=1\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Expected failure\0A\00", align 1
@CRYPT_E_INVALID_X500_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Expected CRYPT_E_INVALID_X500_STRING, got %08x\0A\00", align 1
@simpleCN_W = common dso_local global i8* null, align 8
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Expected ERROR_FILE_NOT_FOUND, got %08x\0A\00", align 1
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"CertStrToNameW failed: %08x\0A\00", align 1
@badlyQuotedCN_W = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"Expected first error character was 1\0A\00", align 1
@namesW = common dso_local global %struct.TYPE_3__* null, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"Index %d: CertStrToNameW failed: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Index %d: expected size %d, got %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Index %d: unexpected value for string %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CertStrToNameW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CertStrToNameW() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [100 x i32], align 16
  %6 = call i32 @pCertStrToNameW(i32 0, i8* null, i32 0, i32* null, i32* null, i64* %2, i8** null)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @pCertStrToNameW(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_CertStrToNameW.bogusW, i64 0, i64 0), i32 0, i32* null, i32* null, i64* %2, i8** null)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %0
  %16 = call i64 (...) @GetLastError()
  %17 = load i64, i64* @CRYPT_E_INVALID_X500_STRING, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %15, %0
  %20 = phi i1 [ false, %0 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 (...) @GetLastError()
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = call i32 @pCertStrToNameW(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_CertStrToNameW.fooW, i64 0, i64 0), i32 0, i32* null, i32* null, i64* %2, i8** null)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = call i64 (...) @GetLastError()
  %29 = load i64, i64* @CRYPT_E_INVALID_X500_STRING, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %27, %19
  %32 = phi i1 [ false, %19 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 (...) @GetLastError()
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load i8*, i8** @simpleCN_W, align 8
  %37 = call i32 @pCertStrToNameW(i32 0, i8* %36, i32 0, i32* null, i32* null, i64* %2, i8** null)
  store i32 %37, i32* %1, align 4
  %38 = load i32, i32* %1, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %31
  %41 = call i64 (...) @GetLastError()
  %42 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %43 = icmp eq i64 %41, %42
  br label %44

44:                                               ; preds = %40, %31
  %45 = phi i1 [ false, %31 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  %47 = call i64 (...) @GetLastError()
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @X509_ASN_ENCODING, align 4
  %50 = load i8*, i8** @simpleCN_W, align 8
  %51 = call i32 @pCertStrToNameW(i32 %49, i8* %50, i32 0, i32* null, i32* null, i64* %2, i8** null)
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* %1, align 4
  %53 = call i64 (...) @GetLastError()
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %53)
  store i64 400, i64* %2, align 8
  %55 = load i32, i32* @X509_ASN_ENCODING, align 4
  %56 = load i8*, i8** @badlyQuotedCN_W, align 8
  %57 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %58 = call i32 @pCertStrToNameW(i32 %55, i8* %56, i32 0, i32* null, i32* %57, i64* %2, i8** null)
  store i32 %58, i32* %1, align 4
  %59 = load i32, i32* %1, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %44
  %62 = call i64 (...) @GetLastError()
  %63 = load i64, i64* @CRYPT_E_INVALID_X500_STRING, align 8
  %64 = icmp eq i64 %62, %63
  br label %65

65:                                               ; preds = %61, %44
  %66 = phi i1 [ false, %44 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  %68 = call i64 (...) @GetLastError()
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  %70 = load i32, i32* @X509_ASN_ENCODING, align 4
  %71 = load i8*, i8** @badlyQuotedCN_W, align 8
  %72 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %73 = call i32 @pCertStrToNameW(i32 %70, i8* %71, i32 0, i32* null, i32* %72, i64* %2, i8** %4)
  store i32 %73, i32* %1, align 4
  %74 = load i32, i32* %1, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %65
  %77 = call i64 (...) @GetLastError()
  %78 = load i64, i64* @CRYPT_E_INVALID_X500_STRING, align 8
  %79 = icmp eq i64 %77, %78
  br label %80

80:                                               ; preds = %76, %65
  %81 = phi i1 [ false, %65 ], [ %79, %76 ]
  %82 = zext i1 %81 to i32
  %83 = call i64 (...) @GetLastError()
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %83)
  %85 = load i8*, i8** %4, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load i8*, i8** %4, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 49
  br label %92

92:                                               ; preds = %87, %80
  %93 = phi i1 [ false, %80 ], [ %91, %87 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %96

96:                                               ; preds = %153, %92
  %97 = load i64, i64* %3, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @namesW, align 8
  %99 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %98)
  %100 = icmp ult i64 %97, %99
  br i1 %100, label %101, label %156

101:                                              ; preds = %96
  store i64 400, i64* %2, align 8
  %102 = load i32, i32* @X509_ASN_ENCODING, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** @namesW, align 8
  %104 = load i64, i64* %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %109 = call i32 @pCertStrToNameW(i32 %102, i8* %107, i32 0, i32* null, i32* %108, i64* %2, i8** null)
  store i32 %109, i32* %1, align 4
  %110 = load i32, i32* %1, align 4
  %111 = load i64, i64* %3, align 8
  %112 = call i64 (...) @GetLastError()
  %113 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i64 %111, i64 %112)
  %114 = load i64, i64* %2, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** @namesW, align 8
  %116 = load i64, i64* %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %114, %119
  %121 = zext i1 %120 to i32
  %122 = load i64, i64* %3, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** @namesW, align 8
  %124 = load i64, i64* %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %2, align 8
  %129 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i64 %122, i64 %127, i64 %128)
  %130 = load i32, i32* %1, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %152

132:                                              ; preds = %101
  %133 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** @namesW, align 8
  %135 = load i64, i64* %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i64, i64* %2, align 8
  %140 = call i32 @memcmp(i32* %133, i32 %138, i64 %139)
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = load i64, i64* %3, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** @namesW, align 8
  %146 = load i64, i64* %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i64 @wine_dbgstr_w(i8* %149)
  %151 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 %144, i64 %150)
  br label %152

152:                                              ; preds = %132, %101
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* %3, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %3, align 8
  br label %96

156:                                              ; preds = %96
  ret void
}

declare dso_local i32 @pCertStrToNameW(i32, i8*, i32, i32*, i32*, i64*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @memcmp(i32*, i32, i64) #1

declare dso_local i64 @wine_dbgstr_w(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
