; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_resource.c_test_LoadStringA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_resource.c_test_LoadStringA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_test = type { i32, i32 }

@test_LoadStringA.str = internal constant [16 x i8] c"String resource\00", align 16
@__const.test_LoadStringA.tests = private unnamed_addr constant [3 x %struct.string_test] [%struct.string_test { i32 128, i32 15 }, %struct.string_test { i32 16, i32 15 }, %struct.string_test { i32 15, i32 14 }], align 16
@.str = private unnamed_addr constant [32 x i8] c"bufsiz=%d: got %d, expected %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"bufsiz=%d: got '%s', expected '%.*s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"bufsiz=%d: NUL termination missing\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"LoadString failed: ret %d err %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"LoadStringA did not return -1 when called with buflen = 0, got %d, err %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"LoadString returned %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"buf[0] = %c (%x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"GetLastError() = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_LoadStringA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LoadStringA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [128 x i8], align 16
  %3 = alloca [3 x %struct.string_test], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = call i32 @GetModuleHandleA(i32* null)
  store i32 %10, i32* %1, align 4
  %11 = bitcast [3 x %struct.string_test]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([3 x %struct.string_test]* @__const.test_LoadStringA.tests to i8*), i64 24, i1 false)
  %12 = call i32 @assert(i32 1)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %65, %0
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = icmp ult i64 %15, 3
  br i1 %16, label %17, label %68

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [3 x %struct.string_test], [3 x %struct.string_test]* %3, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.string_test, %struct.string_test* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [3 x %struct.string_test], [3 x %struct.string_test]* %3, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.string_test, %struct.string_test* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %1, align 4
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %30 = load i32, i32* %7, align 4
  %31 = call i8* @LoadStringA(i32 %28, i32 0, i8* %29, i32 %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 (i32, i8*, i32, ...) @ok(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %17
  br label %65

45:                                               ; preds = %17
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @memcmp(i8* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_LoadStringA.str, i64 0, i64 0), i32 %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %7, align 4
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %54 = load i32, i32* %9, align 4
  %55 = call i32 (i32, i8*, i32, ...) @ok(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %52, i8* %53, i32 %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_LoadStringA.str, i64 0, i64 0))
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (i32, i8*, i32, ...) @ok(i32 %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %45, %44
  %66 = load i32, i32* %4, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %13

68:                                               ; preds = %13
  %69 = load i32, i32* %1, align 4
  %70 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %71 = call i8* @LoadStringA(i32 %69, i32 1, i8* %70, i32 128)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp sgt i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %5, align 4
  %77 = call i32 (...) @GetLastError()
  %78 = call i32 (i32, i8*, i32, ...) @ok(i32 %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32, i32* %1, align 4
  %80 = call i32 @MAKELONG(i32 1, i32 32768)
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %82 = call i8* @LoadStringA(i32 %79, i32 %80, i8* %81, i32 128)
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %5, align 4
  %89 = call i32 (...) @GetLastError()
  %90 = call i32 (i32, i8*, i32, ...) @ok(i32 %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load i32, i32* %1, align 4
  %92 = call i32 @MAKELONG(i32 1, i32 65535)
  %93 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %94 = call i8* @LoadStringA(i32 %91, i32 %92, i8* %93, i32 128)
  %95 = ptrtoint i8* %94 to i32
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp eq i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %5, align 4
  %101 = call i32 (...) @GetLastError()
  %102 = call i32 (i32, i8*, i32, ...) @ok(i32 %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %100, i32 %101)
  %103 = load i32, i32* %1, align 4
  %104 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %105 = call i8* @LoadStringA(i32 %103, i32 65534, i8* %104, i32 128)
  %106 = ptrtoint i8* %105 to i32
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp sgt i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* %5, align 4
  %111 = call i32 (...) @GetLastError()
  %112 = call i32 (i32, i8*, i32, ...) @ok(i32 %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load i32, i32* %1, align 4
  %114 = call i32 @MAKELONG(i32 65534, i32 32768)
  %115 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %116 = call i8* @LoadStringA(i32 %113, i32 %114, i8* %115, i32 128)
  %117 = ptrtoint i8* %116 to i32
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp eq i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %5, align 4
  %123 = call i32 (...) @GetLastError()
  %124 = call i32 (i32, i8*, i32, ...) @ok(i32 %121, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %122, i32 %123)
  %125 = load i32, i32* %1, align 4
  %126 = call i32 @MAKELONG(i32 65534, i32 65535)
  %127 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %128 = call i8* @LoadStringA(i32 %125, i32 %126, i8* %127, i32 128)
  %129 = ptrtoint i8* %128 to i32
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp eq i32 %130, %131
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* %5, align 4
  %135 = call i32 (...) @GetLastError()
  %136 = call i32 (i32, i8*, i32, ...) @ok(i32 %133, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %134, i32 %135)
  %137 = load i32, i32* %1, align 4
  %138 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %139 = call i8* @LoadStringA(i32 %137, i32 0, i8* %138, i32 0)
  %140 = ptrtoint i8* %139 to i32
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %5, align 4
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %149, label %143

143:                                              ; preds = %68
  %144 = load i32, i32* %5, align 4
  %145 = icmp eq i32 %144, 0
  %146 = zext i1 %145 to i32
  %147 = call i64 @broken(i32 %146)
  %148 = icmp ne i64 %147, 0
  br label %149

149:                                              ; preds = %143, %68
  %150 = phi i1 [ true, %68 ], [ %148, %143 ]
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* %5, align 4
  %153 = call i32 (...) @GetLastError()
  %154 = call i32 (i32, i8*, i32, ...) @ok(i32 %151, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0), i32 %152, i32 %153)
  %155 = call i32 @SetLastError(i32 -559038737)
  %156 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  store i8 97, i8* %156, align 16
  %157 = load i32, i32* %1, align 4
  %158 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %159 = call i8* @LoadStringA(i32 %157, i32 1, i8* %158, i32 1)
  %160 = ptrtoint i8* %159 to i32
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i32
  %165 = load i32, i32* %5, align 4
  %166 = call i32 (i32, i8*, i32, ...) @ok(i32 %164, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %165)
  %167 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %168 = load i8, i8* %167, align 16
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 0
  %171 = zext i1 %170 to i32
  %172 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %173 = load i8, i8* %172, align 16
  %174 = sext i8 %173 to i32
  %175 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %176 = load i8, i8* %175, align 16
  %177 = sext i8 %176 to i32
  %178 = call i32 (i32, i8*, i32, ...) @ok(i32 %171, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %174, i32 %177)
  %179 = call i32 (...) @GetLastError()
  %180 = icmp eq i32 %179, -559038737
  %181 = zext i1 %180 to i32
  %182 = call i32 (...) @GetLastError()
  %183 = call i32 (i32, i8*, i32, ...) @ok(i32 %181, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %182)
  ret void
}

declare dso_local i32 @GetModuleHandleA(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @LoadStringA(i32, i32, i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @MAKELONG(i32, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
