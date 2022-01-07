; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_bp.c_InstallSWBreakpoint.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_bp.c_InstallSWBreakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, void (...)*, i8*, i8*, i8*, i8*, i8* }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"InstallSWBreakpoint()\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"InstallSWBreakpoint(): %.8X is valid, writable? %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"pde: %x, pte: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"InstallSWBreakpoint(): %.8X is free\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"InstallSWBreakpoint(): found empty slot\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"InstallSWBreakpoint(): %x value: %x\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"writing breakpoint\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"restoring page access\0A\00", align 1
@tempBp = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"InstallSWBreakpoint(): %.8X is already used\0A\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"InstallSWBreakpoint(): %.8X is a permanent breakpoint\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @InstallSWBreakpoint(i8* %0, i8* %1, void ()* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void ()*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store void ()* %2, void ()** %6, align 8
  %10 = load i8*, i8** @FALSE, align 8
  store i8* %10, i8** %8, align 8
  %11 = call i32 (...) @ENTER_FUNC()
  %12 = call i32 @DPRINT(i32 ptrtoint ([23 x i8]* @.str to i32))
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @IsAddressValid(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %112

16:                                               ; preds = %3
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @IsAddressWriteable(i8* %18)
  %20 = ptrtoint i8* %19 to i32
  %21 = call i32 @DPRINT(i32 %20)
  %22 = load i8*, i8** %4, align 8
  %23 = call i32* @ADDR_TO_PDE(i8* %22)
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i32* @ADDR_TO_PTE(i8* %25)
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @DPRINT(i32 %27)
  %29 = load i8*, i8** %4, align 8
  %30 = call %struct.TYPE_4__* @FindSwBp(i8* %29)
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %7, align 8
  %31 = icmp eq %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %98

32:                                               ; preds = %16
  %33 = load i8*, i8** %4, align 8
  %34 = ptrtoint i8* %33 to i32
  %35 = call i32 @DPRINT(i32 %34)
  %36 = call %struct.TYPE_4__* (...) @FindEmptySwBpSlot()
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %7, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %97

38:                                               ; preds = %32
  %39 = call i32 @DPRINT(i32 ptrtoint ([41 x i8]* @.str.4 to i32))
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @DPRINT(i32 %43)
  %45 = load i8*, i8** %4, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call i8* @IsAddressWriteable(i8* %50)
  store i8* %51, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %38
  %54 = load i8*, i8** %4, align 8
  %55 = load i8*, i8** @TRUE, align 8
  %56 = call i32 @SetAddressWriteable(i8* %54, i8* %55)
  br label %57

57:                                               ; preds = %53, %38
  %58 = call i32 @DPRINT(i32 ptrtoint ([20 x i8]* @.str.6 to i32))
  %59 = load i8*, i8** %4, align 8
  %60 = bitcast i8* %59 to i32*
  store i32 204, i32* %60, align 4
  %61 = call i32 @DPRINT(i32 ptrtoint ([23 x i8]* @.str.7 to i32))
  %62 = load i8*, i8** %9, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %57
  %65 = load i8*, i8** %4, align 8
  %66 = load i8*, i8** @FALSE, align 8
  %67 = call i32 @SetAddressWriteable(i8* %65, i8* %66)
  br label %68

68:                                               ; preds = %64, %57
  %69 = load i8*, i8** @TRUE, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 6
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @TRUE, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  %78 = call i32 @Disasm(i8** %4, i32* @tempBp)
  %79 = load i8*, i8** %4, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %68
  %88 = load void ()*, void ()** %6, align 8
  %89 = bitcast void ()* %88 to void (...)*
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store void (...)* %89, void (...)** %91, align 8
  br label %95

92:                                               ; preds = %68
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store void (...)* null, void (...)** %94, align 8
  br label %95

95:                                               ; preds = %92, %87
  %96 = load i8*, i8** @TRUE, align 8
  store i8* %96, i8** %8, align 8
  br label %97

97:                                               ; preds = %95, %32
  br label %111

98:                                               ; preds = %16
  %99 = load i8*, i8** %4, align 8
  %100 = ptrtoint i8* %99 to i32
  %101 = call i32 @DPRINT(i32 %100)
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = load i8*, i8** %4, align 8
  %108 = ptrtoint i8* %107 to i32
  %109 = call i32 @DPRINT(i32 %108)
  br label %110

110:                                              ; preds = %106, %98
  br label %111

111:                                              ; preds = %110, %97
  br label %112

112:                                              ; preds = %111, %3
  %113 = call i32 (...) @LEAVE_FUNC()
  %114 = load i8*, i8** %8, align 8
  ret i8* %114
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i64 @IsAddressValid(i8*) #1

declare dso_local i8* @IsAddressWriteable(i8*) #1

declare dso_local i32* @ADDR_TO_PDE(i8*) #1

declare dso_local i32* @ADDR_TO_PTE(i8*) #1

declare dso_local %struct.TYPE_4__* @FindSwBp(i8*) #1

declare dso_local %struct.TYPE_4__* @FindEmptySwBpSlot(...) #1

declare dso_local i32 @SetAddressWriteable(i8*, i8*) #1

declare dso_local i32 @Disasm(i8**, i32*) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
