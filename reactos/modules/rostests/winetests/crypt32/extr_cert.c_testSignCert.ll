; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_cert.c_testSignCert.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_cert.c_testSignCert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32*, i32 }

@NTE_BAD_ALGID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Expected NTE_BAD_ALGID, got %08x\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"Expected ERROR_INVALID_PARAMETER or NTE_BAD_ALGID, got %08x\0A\00", align 1
@AT_SIGNATURE = common dso_local global i32 0, align 4
@NTE_BAD_KEYSET = common dso_local global i64 0, align 8
@NTE_NO_KEY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"Expected NTE_BAD_KEYSET or NTE_NO_KEY, got %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"CryptGenKey failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"CryptSignCertificate failed: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Expected size <= %d, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_7__*, i64, i32*, i64*)* @testSignCert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testSignCert(i32 %0, %struct.TYPE_7__* %1, i64 %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64* %4, i64** %10, align 8
  store i64 0, i64* %12, align 8
  %15 = bitcast %struct.TYPE_8__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CryptSignCertificate(i32 0, i32 0, i32 0, i32 %18, i32 %21, %struct.TYPE_8__* %13, i32* null, i32* null, i64* %12)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %5
  %26 = call i64 (...) @GetLastError()
  %27 = load i64, i64* @NTE_BAD_ALGID, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %25, %5
  %30 = phi i1 [ false, %5 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 (...) @GetLastError()
  %33 = call i32 (i32, i8*, i64, ...) @ok(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @CryptSignCertificate(i32 0, i32 0, i32 0, i32 %38, i32 %41, %struct.TYPE_8__* %13, i32* null, i32* null, i64* %12)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %29
  %46 = call i64 (...) @GetLastError()
  %47 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = call i64 (...) @GetLastError()
  %51 = load i64, i64* @NTE_BAD_ALGID, align 8
  %52 = icmp eq i64 %50, %51
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ true, %45 ], [ %52, %49 ]
  br label %55

55:                                               ; preds = %53, %29
  %56 = phi i1 [ false, %29 ], [ %54, %53 ]
  %57 = zext i1 %56 to i32
  %58 = call i64 (...) @GetLastError()
  %59 = call i32 (i32, i8*, i64, ...) @ok(i32 %57, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* @AT_SIGNATURE, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @CryptSignCertificate(i32 0, i32 %60, i32 0, i32 %63, i32 %66, %struct.TYPE_8__* %13, i32* null, i32* null, i64* %12)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %55
  %71 = call i64 (...) @GetLastError()
  %72 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = call i64 (...) @GetLastError()
  %76 = load i64, i64* @NTE_BAD_ALGID, align 8
  %77 = icmp eq i64 %75, %76
  br label %78

78:                                               ; preds = %74, %70
  %79 = phi i1 [ true, %70 ], [ %77, %74 ]
  br label %80

80:                                               ; preds = %78, %55
  %81 = phi i1 [ false, %55 ], [ %79, %78 ]
  %82 = zext i1 %81 to i32
  %83 = call i64 (...) @GetLastError()
  %84 = call i32 (i32, i8*, i64, ...) @ok(i32 %82, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %83)
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @AT_SIGNATURE, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @CryptSignCertificate(i32 %85, i32 %86, i32 0, i32 %89, i32 %92, %struct.TYPE_8__* %13, i32* null, i32* null, i64* %12)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %80
  %97 = call i64 (...) @GetLastError()
  %98 = load i64, i64* @NTE_BAD_KEYSET, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = call i64 (...) @GetLastError()
  %102 = load i64, i64* @NTE_NO_KEY, align 8
  %103 = icmp eq i64 %101, %102
  br label %104

104:                                              ; preds = %100, %96
  %105 = phi i1 [ true, %96 ], [ %103, %100 ]
  br label %106

106:                                              ; preds = %104, %80
  %107 = phi i1 [ false, %80 ], [ %105, %104 ]
  %108 = zext i1 %107 to i32
  %109 = call i64 (...) @GetLastError()
  %110 = call i32 (i32, i8*, i64, ...) @ok(i32 %108, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %109)
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @AT_SIGNATURE, align 4
  %113 = call i32 @CryptGenKey(i32 %111, i32 %112, i32 0, i32* %14)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = call i64 (...) @GetLastError()
  %116 = call i32 (i32, i8*, i64, ...) @ok(i32 %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %115)
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %176

119:                                              ; preds = %106
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @AT_SIGNATURE, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @CryptSignCertificate(i32 %120, i32 %121, i32 0, i32 %124, i32 %127, %struct.TYPE_8__* %13, i32* null, i32* null, i64* %12)
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = call i64 (...) @GetLastError()
  %131 = call i32 (i32, i8*, i64, ...) @ok(i32 %129, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %130)
  %132 = load i64, i64* %12, align 8
  %133 = load i64*, i64** %10, align 8
  %134 = load i64, i64* %133, align 8
  %135 = icmp sle i64 %132, %134
  %136 = zext i1 %135 to i32
  %137 = load i64*, i64** %10, align 8
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %12, align 8
  %140 = call i32 (i32, i8*, i64, ...) @ok(i32 %136, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %138, i64 %139)
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %173

143:                                              ; preds = %119
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @AT_SIGNATURE, align 4
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %9, align 8
  %153 = call i32 @CryptSignCertificate(i32 %144, i32 %145, i32 0, i32 %148, i32 %151, %struct.TYPE_8__* %13, i32* null, i32* %152, i64* %12)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = call i64 (...) @GetLastError()
  %156 = call i32 (i32, i8*, i64, ...) @ok(i32 %154, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %155)
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %143
  %160 = load i64, i64* %12, align 8
  %161 = load i64*, i64** %10, align 8
  store i64 %160, i64* %161, align 8
  %162 = load i32, i32* %6, align 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %9, align 8
  %170 = load i64, i64* %12, align 8
  %171 = call i32 @verifySig(i32 %162, i32 %165, i32 %168, i32* %169, i64 %170)
  br label %172

172:                                              ; preds = %159, %143
  br label %173

173:                                              ; preds = %172, %119
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @CryptDestroyKey(i32 %174)
  br label %176

176:                                              ; preds = %173, %106
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CryptSignCertificate(i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32*, i32*, i64*) #2

declare dso_local i32 @ok(i32, i8*, i64, ...) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @CryptGenKey(i32, i32, i32, i32*) #2

declare dso_local i32 @verifySig(i32, i32, i32, i32*, i64) #2

declare dso_local i32 @CryptDestroyKey(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
