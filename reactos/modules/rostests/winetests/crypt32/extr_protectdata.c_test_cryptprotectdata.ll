; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_protectdata.c_test_cryptprotectdata.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_protectdata.c_test_cryptprotectdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_8__ = type { i8*, i8* }

@secret = common dso_local global i64 0, align 8
@key = common dso_local global i64 0, align 8
@desc = common dso_local global i32* null, align 8
@cipher = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@protected = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Encrypting without plain data source.\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Wrong (%u) GetLastError seen\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Encrypting without cipher destination.\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Encrypting without entropy.\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_IO_PENDING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [52 x i8] c"Expected ERROR_SUCCESS or ERROR_IO_PENDING, got %d\0A\00", align 1
@cipher_entropy = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"Encrypting with entropy.\0A\00", align 1
@cipher_no_desc = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@secret2 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"Expected ERROR_INVALID_PARAMETER, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_cryptprotectdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cryptprotectdata() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_8__, align 8
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = load i64, i64* @secret, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  store i8* %5, i8** %6, align 8
  %7 = load i64, i64* @secret, align 8
  %8 = call i8* @strlen(i64 %7)
  %9 = getelementptr i8, i8* %8, i64 1
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i8* %9, i8** %10, align 8
  %11 = load i64, i64* @key, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  store i8* %12, i8** %13, align 8
  %14 = load i64, i64* @key, align 8
  %15 = call i8* @strlen(i64 %14)
  %16 = getelementptr i8, i8* %15, i64 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = call i32 @SetLastError(i32 -559038737)
  %19 = load i32*, i32** @desc, align 8
  %20 = call i64 @pCryptProtectData(%struct.TYPE_8__* null, i32* %19, %struct.TYPE_8__* null, i32* null, i32* null, i32 0, %struct.TYPE_9__* @cipher)
  store i64 %20, i64* @protected, align 8
  %21 = load i64, i64* @protected, align 8
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %26 = call i64 (...) @GetLastError()
  store i64 %26, i64* %1, align 8
  %27 = load i64, i64* %1, align 8
  %28 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %1, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = call i32 @SetLastError(i32 -559038737)
  %34 = load i32*, i32** @desc, align 8
  %35 = call i64 @pCryptProtectData(%struct.TYPE_8__* %2, i32* %34, %struct.TYPE_8__* null, i32* null, i32* null, i32 0, %struct.TYPE_9__* null)
  store i64 %35, i64* @protected, align 8
  %36 = load i64, i64* @protected, align 8
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i64 (...) @GetLastError()
  store i64 %41, i64* %1, align 8
  %42 = load i64, i64* %1, align 8
  %43 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %1, align 8
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cipher, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cipher, i32 0, i32 0), align 8
  %48 = call i32 @SetLastError(i32 -559038737)
  %49 = load i32*, i32** @desc, align 8
  %50 = call i64 @pCryptProtectData(%struct.TYPE_8__* %2, i32* %49, %struct.TYPE_8__* null, i32* null, i32* null, i32 0, %struct.TYPE_9__* @cipher)
  store i64 %50, i64* @protected, align 8
  %51 = load i64, i64* @protected, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %0
  %54 = load i64, i64* @protected, align 8
  %55 = icmp ne i64 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i64 @broken(i32 %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %53, %0
  %61 = phi i1 [ true, %0 ], [ %59, %53 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i64, i64* @protected, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = call i64 (...) @GetLastError()
  store i64 %67, i64* %1, align 8
  %68 = load i64, i64* %1, align 8
  %69 = load i64, i64* @ERROR_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = load i64, i64* %1, align 8
  %73 = load i64, i64* @ERROR_IO_PENDING, align 8
  %74 = icmp eq i64 %72, %73
  br label %75

75:                                               ; preds = %71, %66
  %76 = phi i1 [ true, %66 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* %1, align 8
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i64 %78)
  br label %80

80:                                               ; preds = %75, %60
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cipher_entropy, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cipher_entropy, i32 0, i32 0), align 8
  %81 = call i32 @SetLastError(i32 -559038737)
  %82 = load i32*, i32** @desc, align 8
  %83 = call i64 @pCryptProtectData(%struct.TYPE_8__* %2, i32* %82, %struct.TYPE_8__* %3, i32* null, i32* null, i32 0, %struct.TYPE_9__* @cipher_entropy)
  store i64 %83, i64* @protected, align 8
  %84 = load i64, i64* @protected, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %80
  %87 = load i64, i64* @protected, align 8
  %88 = icmp ne i64 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i64 @broken(i32 %90)
  %92 = icmp ne i64 %91, 0
  br label %93

93:                                               ; preds = %86, %80
  %94 = phi i1 [ true, %80 ], [ %92, %86 ]
  %95 = zext i1 %94 to i32
  %96 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cipher_no_desc, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cipher_no_desc, i32 0, i32 0), align 8
  %97 = load i64, i64* @secret2, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  store i8* %98, i8** %99, align 8
  %100 = load i64, i64* @secret2, align 8
  %101 = call i8* @strlen(i64 %100)
  %102 = getelementptr i8, i8* %101, i64 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i8* %102, i8** %103, align 8
  %104 = call i32 @SetLastError(i32 -559038737)
  %105 = call i64 @pCryptProtectData(%struct.TYPE_8__* %2, i32* null, %struct.TYPE_8__* %3, i32* null, i32* null, i32 0, %struct.TYPE_9__* @cipher_no_desc)
  store i64 %105, i64* @protected, align 8
  %106 = load i64, i64* @protected, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %93
  %109 = call i64 (...) @GetLastError()
  %110 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i64 (...) @GetLastError()
  %114 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i64 %113)
  br label %115

115:                                              ; preds = %108, %93
  ret void
}

declare dso_local i8* @strlen(i64) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @pCryptProtectData(%struct.TYPE_8__*, i32*, %struct.TYPE_8__*, i32*, i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
