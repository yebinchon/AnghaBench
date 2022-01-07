; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_debugger.c_doDebugger.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_debugger.c_doDebugger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8* }

@myARGV = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"attach\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"debugger: waiting for the start signal...\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"nokill\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"debugger: done debugging...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @doDebugger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doDebugger(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %10 = load i32, i32* %3, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = icmp sge i32 %12, 4
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i8**, i8*** %4, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 3
  %17 = load i8*, i8** %16, align 8
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i8* [ %17, %14 ], [ null, %18 ]
  store i8* %20, i8** %5, align 8
  %21 = load i32, i32* %3, align 4
  %22 = icmp sge i32 %21, 5
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i8**, i8*** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 4
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @atol(i8* %26)
  br label %29

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %23
  %30 = phi i64 [ %27, %23 ], [ 0, %28 ]
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 9
  store i8* null, i8** %32, align 8
  %33 = load i32*, i32** @myARGV, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @strstr(i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = call i8* @DebugActiveProcess(i64 %40)
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 8
  store i8* %41, i8** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 8
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = call i8* (...) @GetLastError()
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 9
  store i8* %47, i8** %48, align 8
  br label %49

49:                                               ; preds = %46, %38
  br label %53

50:                                               ; preds = %29
  %51 = load i8*, i8** @TRUE, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 8
  store i8* %51, i8** %52, align 8
  br label %53

53:                                               ; preds = %50, %49
  %54 = load i32, i32* %3, align 4
  %55 = icmp sge i32 %54, 6
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i8**, i8*** %4, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 5
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @atol(i8* %59)
  %61 = inttoptr i64 %60 to i32*
  br label %63

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %56
  %64 = phi i32* [ %61, %56 ], [ null, %62 ]
  store i32* %64, i32** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  store i8* null, i8** %65, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = load i32*, i32** @myARGV, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @strstr(i32 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %68
  %75 = load i32*, i32** %9, align 8
  %76 = call i8* @SetEvent(i32* %75)
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  store i8* %76, i8** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %74
  %82 = call i8* (...) @GetLastError()
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  store i8* %82, i8** %83, align 8
  br label %84

84:                                               ; preds = %81, %74
  br label %88

85:                                               ; preds = %68, %63
  %86 = load i8*, i8** @TRUE, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  store i8* %86, i8** %87, align 8
  br label %88

88:                                               ; preds = %85, %84
  %89 = load i8*, i8** %5, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 @get_events(i8* %92, i32** %7, i32** %8)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32*, i32** @myARGV, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @strstr(i32 %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = call i32 @trace(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* @INFINITE, align 4
  %104 = call i32 @WaitForSingleObject(i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %100, %94
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 5
  store i8* null, i8** %106, align 8
  %107 = load i32*, i32** @myARGV, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @strstr(i32 %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %105
  %113 = load i32, i32* @FALSE, align 4
  %114 = call i8* @pDebugSetProcessKillOnExit(i32 %113)
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  store i8* %114, i8** %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %112
  %120 = call i8* (...) @GetLastError()
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 5
  store i8* %120, i8** %121, align 8
  br label %122

122:                                              ; preds = %119, %112
  br label %126

123:                                              ; preds = %105
  %124 = load i8*, i8** @TRUE, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  store i8* %124, i8** %125, align 8
  br label %126

126:                                              ; preds = %123, %122
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  store i8* null, i8** %127, align 8
  %128 = load i32*, i32** @myARGV, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @strstr(i32 %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = call i8* @pDebugActiveProcessStop(i64 %135)
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i8* %136, i8** %137, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %133
  %142 = call i8* (...) @GetLastError()
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  store i8* %142, i8** %143, align 8
  br label %144

144:                                              ; preds = %141, %133
  br label %148

145:                                              ; preds = %126
  %146 = load i8*, i8** @TRUE, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i8* %146, i8** %147, align 8
  br label %148

148:                                              ; preds = %145, %144
  %149 = load i8*, i8** %5, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i8*, i8** %5, align 8
  %153 = call i32 @save_blackbox(i8* %152, %struct.TYPE_3__* %6, i32 80)
  br label %154

154:                                              ; preds = %151, %148
  %155 = call i32 @trace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %156 = load i32*, i32** %8, align 8
  %157 = call i8* @SetEvent(i32* %156)
  %158 = call i32 @ExitProcess(i32 -559038737)
  ret void
}

declare dso_local i64 @atol(i8*) #1

declare dso_local i64 @strstr(i32, i8*) #1

declare dso_local i8* @DebugActiveProcess(i64) #1

declare dso_local i8* @GetLastError(...) #1

declare dso_local i8* @SetEvent(i32*) #1

declare dso_local i32 @get_events(i8*, i32**, i32**) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @WaitForSingleObject(i32*, i32) #1

declare dso_local i8* @pDebugSetProcessKillOnExit(i32) #1

declare dso_local i8* @pDebugActiveProcessStop(i64) #1

declare dso_local i32 @save_blackbox(i8*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @ExitProcess(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
