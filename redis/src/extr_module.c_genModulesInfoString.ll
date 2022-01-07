; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_genModulesInfoString.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_genModulesInfoString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RedisModule = type { i32, i32, i32, i32, i32 }

@modules = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"module:name=%S,ver=%i,api=%i,filters=%i,usedby=%S,using=%S,options=%S\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genModulesInfoString(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.RedisModule*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @modules, align 4
  %11 = call i32* @dictGetIterator(i32 %10)
  store i32* %11, i32** %3, align 8
  br label %12

12:                                               ; preds = %16, %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32* @dictNext(i32* %13)
  store i32* %14, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %54

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @dictGetKey(i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call %struct.RedisModule* @dictGetVal(i32* %19)
  store %struct.RedisModule* %20, %struct.RedisModule** %6, align 8
  %21 = load %struct.RedisModule*, %struct.RedisModule** %6, align 8
  %22 = getelementptr inbounds %struct.RedisModule, %struct.RedisModule* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @genModulesInfoStringRenderModulesList(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.RedisModule*, %struct.RedisModule** %6, align 8
  %26 = getelementptr inbounds %struct.RedisModule, %struct.RedisModule* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @genModulesInfoStringRenderModulesList(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.RedisModule*, %struct.RedisModule** %6, align 8
  %30 = call i32 @genModulesInfoStringRenderModuleOptions(%struct.RedisModule* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.RedisModule*, %struct.RedisModule** %6, align 8
  %34 = getelementptr inbounds %struct.RedisModule, %struct.RedisModule* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.RedisModule*, %struct.RedisModule** %6, align 8
  %37 = getelementptr inbounds %struct.RedisModule, %struct.RedisModule* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.RedisModule*, %struct.RedisModule** %6, align 8
  %40 = getelementptr inbounds %struct.RedisModule, %struct.RedisModule* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @listLength(i32 %41)
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @sdscatfmt(i32 %31, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %38, i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @sdsfree(i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @sdsfree(i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @sdsfree(i32 %52)
  br label %12

54:                                               ; preds = %12
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @dictReleaseIterator(i32* %55)
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local i32 @dictGetKey(i32*) #1

declare dso_local %struct.RedisModule* @dictGetVal(i32*) #1

declare dso_local i32 @genModulesInfoStringRenderModulesList(i32) #1

declare dso_local i32 @genModulesInfoStringRenderModuleOptions(%struct.RedisModule*) #1

declare dso_local i32 @sdscatfmt(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @listLength(i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
