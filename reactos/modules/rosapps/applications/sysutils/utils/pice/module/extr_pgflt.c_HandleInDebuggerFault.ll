; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_pgflt.c_HandleInDebuggerFault.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_pgflt.c_HandleInDebuggerFault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [82 x i8] c"HandleInDebuggerFault(): ###### page fault @ %.8X while inside debugger, eip: %x\0A\00", align 1
@bInPageFaultHandler = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [79 x i8] c"HandleInDebuggerFault(): ###### page fault @ %.8X while in page fault handler\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"!!! machine is halted !!!\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"%.8X (%.4X:%.8X %.8X %s %s %s task=%.8X )\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"PLP\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"NP\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"USER-MODE\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"KERNEL-MODE\00", align 1
@bInPrintk = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [67 x i8] c"HandleInDebuggerFault(): unexpected pagefault in command handler!\0A\00", align 1
@.str.11 = private unnamed_addr constant [93 x i8] c"HandleInDebuggerFault(): unexpected pagefault in command handler while in PrintkCallback()!\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"PGD for %.8X @ %.8X = %.8X\0A\00", align 1
@_PAGE_PRESENT = common dso_local global i32 0, align 4
@_PAGE_4M = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [28 x i8] c"PTE for %.8X @ %.8X = %.8X\0A\00", align 1
@CurrentEBP = common dso_local global i32 0, align 4
@ulRealStackPtr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HandleInDebuggerFault(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 (...) @ENTER_FUNC()
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @DPRINT(i32 %13)
  %15 = load i64, i64* @bInPageFaultHandler, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @DPRINT(i32 %18)
  %20 = call i32 @DPRINT(i32 ptrtoint ([27 x i8]* @.str.2 to i32))
  call void asm sideeffect "hlt", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %21 = call i32 (...) @LEAVE_FUNC()
  store i32 0, i32* %3, align 4
  br label %117

22:                                               ; preds = %2
  %23 = load i64, i64* @TRUE, align 8
  store i64 %23, i64* @bInPageFaultHandler, align 8
  %24 = call i64 (...) @IoGetCurrentProcess()
  store i64 %24, i64* %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 2
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)
  %56 = load i64, i64* %6, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @DPRINT(i32 %57)
  %59 = load i32, i32* @bInPrintk, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %22
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @DPRINT(i32 %62)
  br label %67

64:                                               ; preds = %22
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @DPRINT(i32 %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i64, i64* %6, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %108

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = call i32* @ADDR_TO_PDE(i32 %71)
  store i32* %72, i32** %7, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = ptrtoint i32* %74 to i32
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @DPRINT(i32 %77)
  %79 = load i32*, i32** %7, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %107

81:                                               ; preds = %70
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @_PAGE_PRESENT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %81
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @_PAGE_4M, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %106, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %5, align 4
  %95 = call i32* @ADDR_TO_PTE(i32 %94)
  store i32* %95, i32** %8, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load i32, i32* %5, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = ptrtoint i32* %100 to i32
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @DPRINT(i32 %103)
  br label %105

105:                                              ; preds = %98, %93
  br label %106

106:                                              ; preds = %105, %87
  br label %107

107:                                              ; preds = %106, %81, %70
  br label %108

108:                                              ; preds = %107, %67
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @CurrentEBP, align 4
  %113 = load i32, i32* @ulRealStackPtr, align 4
  %114 = call i32 @IntelStackWalk(i32 %111, i32 %112, i32 %113)
  %115 = call i32 @DPRINT(i32 ptrtoint ([27 x i8]* @.str.2 to i32))
  call void asm sideeffect "hlt", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  %116 = call i32 (...) @LEAVE_FUNC()
  store i32 2, i32* %3, align 4
  br label %117

117:                                              ; preds = %108, %17
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

declare dso_local i64 @IoGetCurrentProcess(...) #1

declare dso_local i32* @ADDR_TO_PDE(i32) #1

declare dso_local i32* @ADDR_TO_PTE(i32) #1

declare dso_local i32 @IntelStackWalk(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1108}
!3 = !{i32 2434}
