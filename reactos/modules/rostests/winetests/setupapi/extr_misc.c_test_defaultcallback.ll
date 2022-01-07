; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_misc.c_test_defaultcallback.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_misc.c_test_defaultcallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.default_callback_context = type { %struct.default_callback_context*, i32*, i32*, %struct.default_callback_context* }

@test_defaultcallback.magic = internal constant %struct.default_callback_context* inttoptr (i64 1129402451 to %struct.default_callback_context*), align 8
@WM_USER = common dso_local global %struct.default_callback_context* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"got magic 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"got %p, expected %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"got %d, expected %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Skipping tests on old systems.\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_defaultcallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_defaultcallback() #0 {
  %1 = alloca %struct.default_callback_context*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* inttoptr (i64 291 to i32*), i32** %2, align 8
  store i32* inttoptr (i64 1110 to i32*), i32** %3, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.default_callback_context*, %struct.default_callback_context** @WM_USER, align 8
  %7 = call %struct.default_callback_context* @SetupInitDefaultQueueCallbackEx(i32* %4, i32* %5, %struct.default_callback_context* %6, i32 0, i32* null)
  store %struct.default_callback_context* %7, %struct.default_callback_context** %1, align 8
  %8 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %9 = icmp ne %struct.default_callback_context* %8, null
  %10 = zext i1 %9 to i32
  %11 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %12 = call i32 (i32, i8*, %struct.default_callback_context*, ...) @ok(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.default_callback_context* %11)
  %13 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %14 = getelementptr inbounds %struct.default_callback_context, %struct.default_callback_context* %13, i32 0, i32 3
  %15 = load %struct.default_callback_context*, %struct.default_callback_context** %14, align 8
  %16 = icmp eq %struct.default_callback_context* %15, inttoptr (i64 1129402451 to %struct.default_callback_context*)
  br i1 %16, label %25, label %17

17:                                               ; preds = %0
  %18 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %19 = getelementptr inbounds %struct.default_callback_context, %struct.default_callback_context* %18, i32 0, i32 3
  %20 = load %struct.default_callback_context*, %struct.default_callback_context** %19, align 8
  %21 = icmp ne %struct.default_callback_context* %20, inttoptr (i64 1129402451 to %struct.default_callback_context*)
  %22 = zext i1 %21 to i32
  %23 = call i64 @broken(i32 %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %17, %0
  %26 = phi i1 [ true, %0 ], [ %24, %17 ]
  %27 = zext i1 %26 to i32
  %28 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %29 = getelementptr inbounds %struct.default_callback_context, %struct.default_callback_context* %28, i32 0, i32 3
  %30 = load %struct.default_callback_context*, %struct.default_callback_context** %29, align 8
  %31 = call i32 (i32, i8*, %struct.default_callback_context*, ...) @ok(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.default_callback_context* %30)
  %32 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %33 = getelementptr inbounds %struct.default_callback_context, %struct.default_callback_context* %32, i32 0, i32 3
  %34 = load %struct.default_callback_context*, %struct.default_callback_context** %33, align 8
  %35 = icmp eq %struct.default_callback_context* %34, inttoptr (i64 1129402451 to %struct.default_callback_context*)
  br i1 %35, label %36, label %74

36:                                               ; preds = %25
  %37 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %38 = getelementptr inbounds %struct.default_callback_context, %struct.default_callback_context* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32*, i32** %2, align 8
  %41 = icmp eq i32* %39, %40
  %42 = zext i1 %41 to i32
  %43 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %44 = getelementptr inbounds %struct.default_callback_context, %struct.default_callback_context* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = bitcast i32* %45 to %struct.default_callback_context*
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 (i32, i8*, %struct.default_callback_context*, ...) @ok(i32 %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.default_callback_context* %46, i32* %47)
  %49 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %50 = getelementptr inbounds %struct.default_callback_context, %struct.default_callback_context* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = icmp eq i32* %51, %52
  %54 = zext i1 %53 to i32
  %55 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %56 = getelementptr inbounds %struct.default_callback_context, %struct.default_callback_context* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = bitcast i32* %57 to %struct.default_callback_context*
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 (i32, i8*, %struct.default_callback_context*, ...) @ok(i32 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.default_callback_context* %58, i32* %59)
  %61 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %62 = getelementptr inbounds %struct.default_callback_context, %struct.default_callback_context* %61, i32 0, i32 0
  %63 = load %struct.default_callback_context*, %struct.default_callback_context** %62, align 8
  %64 = load %struct.default_callback_context*, %struct.default_callback_context** @WM_USER, align 8
  %65 = icmp eq %struct.default_callback_context* %63, %64
  %66 = zext i1 %65 to i32
  %67 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %68 = getelementptr inbounds %struct.default_callback_context, %struct.default_callback_context* %67, i32 0, i32 0
  %69 = load %struct.default_callback_context*, %struct.default_callback_context** %68, align 8
  %70 = load %struct.default_callback_context*, %struct.default_callback_context** @WM_USER, align 8
  %71 = call i32 (i32, i8*, %struct.default_callback_context*, ...) @ok(i32 %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %struct.default_callback_context* %69, %struct.default_callback_context* %70)
  %72 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %73 = call i32 @SetupTermDefaultQueueCallback(%struct.default_callback_context* %72)
  br label %78

74:                                               ; preds = %25
  %75 = call i32 @win_skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %76 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %77 = call i32 @SetupTermDefaultQueueCallback(%struct.default_callback_context* %76)
  br label %124

78:                                               ; preds = %36
  %79 = load i32*, i32** %2, align 8
  %80 = call %struct.default_callback_context* @SetupInitDefaultQueueCallback(i32* %79)
  store %struct.default_callback_context* %80, %struct.default_callback_context** %1, align 8
  %81 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %82 = getelementptr inbounds %struct.default_callback_context, %struct.default_callback_context* %81, i32 0, i32 3
  %83 = load %struct.default_callback_context*, %struct.default_callback_context** %82, align 8
  %84 = icmp eq %struct.default_callback_context* %83, inttoptr (i64 1129402451 to %struct.default_callback_context*)
  %85 = zext i1 %84 to i32
  %86 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %87 = getelementptr inbounds %struct.default_callback_context, %struct.default_callback_context* %86, i32 0, i32 3
  %88 = load %struct.default_callback_context*, %struct.default_callback_context** %87, align 8
  %89 = call i32 (i32, i8*, %struct.default_callback_context*, ...) @ok(i32 %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.default_callback_context* %88)
  %90 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %91 = getelementptr inbounds %struct.default_callback_context, %struct.default_callback_context* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32*, i32** %2, align 8
  %94 = icmp eq i32* %92, %93
  %95 = zext i1 %94 to i32
  %96 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %97 = getelementptr inbounds %struct.default_callback_context, %struct.default_callback_context* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = bitcast i32* %98 to %struct.default_callback_context*
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 (i32, i8*, %struct.default_callback_context*, ...) @ok(i32 %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.default_callback_context* %99, i32* %100)
  %102 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %103 = getelementptr inbounds %struct.default_callback_context, %struct.default_callback_context* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = icmp eq i32* %104, null
  %106 = zext i1 %105 to i32
  %107 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %108 = getelementptr inbounds %struct.default_callback_context, %struct.default_callback_context* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = bitcast i32* %109 to %struct.default_callback_context*
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 (i32, i8*, %struct.default_callback_context*, ...) @ok(i32 %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.default_callback_context* %110, i32* %111)
  %113 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %114 = getelementptr inbounds %struct.default_callback_context, %struct.default_callback_context* %113, i32 0, i32 0
  %115 = load %struct.default_callback_context*, %struct.default_callback_context** %114, align 8
  %116 = icmp eq %struct.default_callback_context* %115, null
  %117 = zext i1 %116 to i32
  %118 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %119 = getelementptr inbounds %struct.default_callback_context, %struct.default_callback_context* %118, i32 0, i32 0
  %120 = load %struct.default_callback_context*, %struct.default_callback_context** %119, align 8
  %121 = call i32 (i32, i8*, %struct.default_callback_context*, ...) @ok(i32 %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %struct.default_callback_context* %120)
  %122 = load %struct.default_callback_context*, %struct.default_callback_context** %1, align 8
  %123 = call i32 @SetupTermDefaultQueueCallback(%struct.default_callback_context* %122)
  br label %124

124:                                              ; preds = %78, %74
  ret void
}

declare dso_local %struct.default_callback_context* @SetupInitDefaultQueueCallbackEx(i32*, i32*, %struct.default_callback_context*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, %struct.default_callback_context*, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @SetupTermDefaultQueueCallback(%struct.default_callback_context*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local %struct.default_callback_context* @SetupInitDefaultQueueCallback(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
