; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_RM_GetClientInfoById.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_RM_GetClientInfoById.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDISMODULE_ERR = common dso_local global i32 0, align 4
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RM_GetClientInfoById(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32* @lookupClientByID(i32 %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %13, i32* %3, align 4
  br label %28

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %18, i32* %3, align 4
  br label %28

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @modulePopulateClientInfoStructure(i8* %24, i32* %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %19, %17, %12
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32* @lookupClientByID(i32) #1

declare dso_local i32 @modulePopulateClientInfoStructure(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
