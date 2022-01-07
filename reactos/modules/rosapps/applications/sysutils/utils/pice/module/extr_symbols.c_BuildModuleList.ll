; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_BuildModuleList.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_BuildModuleList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@pdebug_module_head = common dso_local global i32 0, align 4
@pdebug_module_tail = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BuildModuleList() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = call i32 (...) @ENTER_FUNC()
  %5 = load i32, i32* @pdebug_module_head, align 4
  store i32 %5, i32* @pdebug_module_tail, align 4
  %6 = call %struct.TYPE_3__* (...) @IoGetCurrentProcess()
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = ptrtoint %struct.TYPE_3__* %7 to i32
  %9 = call i32 @IsAddressValid(i32 %8)
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @ListUserModules(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = call i32 (...) @LEAVE_FUNC()
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %1, align 4
  br label %37

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %13
  br label %28

28:                                               ; preds = %27, %0
  %29 = call i32 (...) @ListDriverModules()
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = call i32 (...) @LEAVE_FUNC()
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %1, align 4
  br label %37

34:                                               ; preds = %28
  %35 = call i32 (...) @LEAVE_FUNC()
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %34, %31, %23
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local %struct.TYPE_3__* @IoGetCurrentProcess(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @IsAddressValid(i32) #1

declare dso_local i32 @ListUserModules(i64) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

declare dso_local i32 @ListDriverModules(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
