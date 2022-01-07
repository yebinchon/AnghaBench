; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_genModulesInfoStringRenderModuleOptions.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_genModulesInfoStringRenderModuleOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RedisModule = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@REDISMODULE_OPTIONS_HANDLE_IO_ERRORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"handle-io-errors|\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genModulesInfoStringRenderModuleOptions(%struct.RedisModule* %0) #0 {
  %2 = alloca %struct.RedisModule*, align 8
  %3 = alloca i32, align 4
  store %struct.RedisModule* %0, %struct.RedisModule** %2, align 8
  %4 = call i32 @sdsnew(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* %3, align 4
  %5 = load %struct.RedisModule*, %struct.RedisModule** %2, align 8
  %6 = getelementptr inbounds %struct.RedisModule, %struct.RedisModule* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @REDISMODULE_OPTIONS_HANDLE_IO_ERRORS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @sdscat(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @sdstrim(i32 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @sdscat(i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i32 @sdscat(i32, i8*) #1

declare dso_local i32 @sdstrim(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
