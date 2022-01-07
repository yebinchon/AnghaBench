; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_lmhash.c_test_SystemFunction005.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_lmhash.c_test_SystemFunction005.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ustring = type { i8*, i32, i32 }

@test_SystemFunction005.datastr = internal global [28 x i8] c"twinkle twinkle little star\00", align 16
@test_SystemFunction005.keystr = internal global [8 x i8] c"byolnim\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"function failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Length wrong\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"data wrong\0A\00", align 1
@STATUS_INVALID_PARAMETER_1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"Expected STATUS_SUCCESS or STATUS_INVALID_PARAMETER_1, got %08x\0A\00", align 1
@STATUS_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [74 x i8] c"Expected STATUS_BUFFER_TOO_SMALL or STATUS_INVALID_PARAMETER_1, got %08x\0A\00", align 1
@STATUS_UNKNOWN_REVISION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [74 x i8] c"Expected STATUS_UNKNOWN_REVISION or STATUS_INVALID_PARAMETER_1, got %08x\0A\00", align 1
@STATUS_INVALID_PARAMETER_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SystemFunction005 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SystemFunction005() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = alloca [64 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.ustring, align 8
  %5 = alloca %struct.ustring, align 8
  %6 = alloca %struct.ustring, align 8
  %7 = alloca %struct.ustring, align 8
  %8 = getelementptr inbounds %struct.ustring, %struct.ustring* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @test_SystemFunction005.datastr, i64 0, i64 0), i8** %8, align 8
  %9 = call i8* @strlen(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @test_SystemFunction005.datastr, i64 0, i64 0))
  %10 = ptrtoint i8* %9 to i32
  %11 = getelementptr inbounds %struct.ustring, %struct.ustring* %4, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.ustring, %struct.ustring* %4, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.ustring, %struct.ustring* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SystemFunction005.keystr, i64 0, i64 0), i8** %13, align 8
  %14 = call i8* @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SystemFunction005.keystr, i64 0, i64 0))
  %15 = ptrtoint i8* %14 to i32
  %16 = getelementptr inbounds %struct.ustring, %struct.ustring* %5, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.ustring, %struct.ustring* %5, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %19 = getelementptr inbounds %struct.ustring, %struct.ustring* %6, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds %struct.ustring, %struct.ustring* %6, i32 0, i32 2
  store i32 64, i32* %20, align 4
  %21 = getelementptr inbounds %struct.ustring, %struct.ustring* %6, i32 0, i32 1
  store i32 64, i32* %21, align 8
  %22 = call i32 @pSystemFunction004(%struct.ustring* %4, %struct.ustring* %5, %struct.ustring* %6)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @STATUS_SUCCESS, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %29 = call i32 @memset(i8* %28, i32 0, i32 64)
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %31 = getelementptr inbounds %struct.ustring, %struct.ustring* %7, i32 0, i32 0
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds %struct.ustring, %struct.ustring* %7, i32 0, i32 1
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.ustring, %struct.ustring* %7, i32 0, i32 2
  store i32 64, i32* %33, align 4
  %34 = call i32 @pSystemFunction005(%struct.ustring* %6, %struct.ustring* %5, %struct.ustring* %7)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @STATUS_SUCCESS, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @pSystemFunction005(%struct.ustring* %6, %struct.ustring* %5, %struct.ustring* %7)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @STATUS_SUCCESS, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %46 = getelementptr inbounds %struct.ustring, %struct.ustring* %7, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.ustring, %struct.ustring* %4, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %47, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %53 = getelementptr inbounds %struct.ustring, %struct.ustring* %7, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds %struct.ustring, %struct.ustring* %4, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds %struct.ustring, %struct.ustring* %4, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = call i32 @memcmp(i8* %54, i8* %56, i64 %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %65 = getelementptr inbounds %struct.ustring, %struct.ustring* %6, i32 0, i32 1
  store i32 0, i32* %65, align 8
  %66 = getelementptr inbounds %struct.ustring, %struct.ustring* %6, i32 0, i32 2
  store i32 0, i32* %66, align 4
  %67 = call i32 @pSystemFunction005(%struct.ustring* %6, %struct.ustring* %5, %struct.ustring* %7)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @STATUS_SUCCESS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %0
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @STATUS_INVALID_PARAMETER_1, align 4
  %74 = icmp eq i32 %72, %73
  br label %75

75:                                               ; preds = %71, %0
  %76 = phi i1 [ true, %0 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %3, align 4
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = getelementptr inbounds %struct.ustring, %struct.ustring* %7, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.ustring, %struct.ustring* %4, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %81, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %87 = getelementptr inbounds %struct.ustring, %struct.ustring* %7, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds %struct.ustring, %struct.ustring* %4, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds %struct.ustring, %struct.ustring* %4, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = call i32 @memcmp(i8* %88, i8* %90, i64 %93)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %99 = getelementptr inbounds %struct.ustring, %struct.ustring* %7, i32 0, i32 2
  store i32 0, i32* %99, align 4
  %100 = call i32 @pSystemFunction005(%struct.ustring* %6, %struct.ustring* %5, %struct.ustring* %7)
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @STATUS_BUFFER_TOO_SMALL, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %75
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @STATUS_INVALID_PARAMETER_1, align 4
  %107 = icmp eq i32 %105, %106
  br label %108

108:                                              ; preds = %104, %75
  %109 = phi i1 [ true, %75 ], [ %107, %104 ]
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %3, align 4
  %112 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = getelementptr inbounds %struct.ustring, %struct.ustring* %5, i32 0, i32 1
  store i32 1, i32* %113, align 8
  %114 = call i32 @pSystemFunction005(%struct.ustring* %6, %struct.ustring* %5, %struct.ustring* %7)
  store i32 %114, i32* %3, align 4
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @STATUS_UNKNOWN_REVISION, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %108
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @STATUS_INVALID_PARAMETER_1, align 4
  %121 = icmp eq i32 %119, %120
  br label %122

122:                                              ; preds = %118, %108
  %123 = phi i1 [ true, %108 ], [ %121, %118 ]
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %3, align 4
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i32 %125)
  %127 = getelementptr inbounds %struct.ustring, %struct.ustring* %5, i32 0, i32 1
  store i32 0, i32* %127, align 8
  %128 = call i32 @pSystemFunction005(%struct.ustring* %6, %struct.ustring* %5, %struct.ustring* %7)
  store i32 %128, i32* %3, align 4
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @STATUS_INVALID_PARAMETER_2, align 4
  %131 = icmp eq i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @pSystemFunction004(%struct.ustring*, %struct.ustring*, %struct.ustring*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @pSystemFunction005(%struct.ustring*, %struct.ustring*, %struct.ustring*) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
