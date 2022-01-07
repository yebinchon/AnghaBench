; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_MessageStateAnalyzer.c_DoStage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_MessageStateAnalyzer.c_DoStage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64*, i64, i32, i32, i32, i32* }

@FALSE = common dso_local global i64 0, align 8
@s_bNextStage = common dso_local global i64 0, align 8
@s_iStage = common dso_local global i64 0, align 8
@s_cStages = common dso_local global i64 0, align 8
@s_pStages = common dso_local global %struct.TYPE_3__* null, align 8
@s_iStep = common dso_local global i64 0, align 8
@s_nLevel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Line %d, Step %d: Level expected %d but %d.\0A\00", align 1
@PARENT_MSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Line %d, Step %d: PARENT_MSG expected %u but %u.\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Line %d: Level expected %d but %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Line %d: PARENT_MSG expected %u but %u.\0A\00", align 1
@s_nCounters = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @DoStage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoStage(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* @s_bNextStage, align 8
  %13 = load i64, i64* @s_iStage, align 8
  %14 = load i64, i64* @s_cStages, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %179

17:                                               ; preds = %4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_pStages, align 8
  %19 = load i64, i64* @s_iStage, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %11, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %173 [
    i32 128, label %24
    i32 129, label %91
  ]

24:                                               ; preds = %17
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @s_iStep, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %90

33:                                               ; preds = %24
  %34 = call i32 @ok_int(i32 1, i32 1)
  %35 = load i32, i32* @s_nLevel, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %35, %38
  %40 = zext i1 %39 to i32
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* @s_iStep, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @s_nLevel, align 4
  %49 = call i32 (i32, i8*, i32, i64, i32, ...) @ok(i32 %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %43, i64 %44, i32 %47, i32 %48)
  %50 = load i32, i32* @PARENT_MSG, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %50, %53
  %55 = zext i1 %54 to i32
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* @s_iStep, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PARENT_MSG, align 4
  %64 = call i32 (i32, i8*, i32, i64, i32, ...) @ok(i32 %55, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %58, i64 %59, i32 %62, i32 %63)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* @s_iStep, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %33
  %74 = load i32, i32* %5, align 4
  %75 = load i64, i64* %10, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @DoAction(i32 %74, i64 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %33
  %80 = load i64, i64* @s_iStep, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* @s_iStep, align 8
  %82 = load i64, i64* @s_iStep, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp uge i64 %82, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i64, i64* @TRUE, align 8
  store i64 %88, i64* @s_bNextStage, align 8
  br label %89

89:                                               ; preds = %87, %79
  br label %90

90:                                               ; preds = %89, %24
  br label %173

91:                                               ; preds = %17
  store i64 0, i64* %9, align 8
  br label %92

92:                                               ; preds = %169, %91
  %93 = load i64, i64* %9, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ult i64 %93, %96
  br i1 %97, label %98, label %172

98:                                               ; preds = %92
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 6
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* %9, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %168

107:                                              ; preds = %98
  %108 = call i32 @ok_int(i32 1, i32 1)
  %109 = load i32, i32* @s_nLevel, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %109, %112
  %114 = zext i1 %113 to i32
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = load i32, i32* @s_nLevel, align 4
  %123 = call i32 (i32, i8*, i32, i64, i32, ...) @ok(i32 %114, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %117, i64 %121, i32 %122)
  %124 = load i32, i32* @PARENT_MSG, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %124, %127
  %129 = zext i1 %128 to i32
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = load i32, i32* @PARENT_MSG, align 4
  %138 = call i32 (i32, i8*, i32, i64, i32, ...) @ok(i32 %129, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %132, i64 %136, i32 %137)
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i64*, i64** %140, align 8
  %142 = load i64, i64* %9, align 8
  %143 = getelementptr inbounds i64, i64* %141, i64 %142
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %10, align 8
  %145 = load i64, i64* %10, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %107
  %148 = load i32, i32* %5, align 4
  %149 = load i64, i64* %10, align 8
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @DoAction(i32 %148, i64 %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %147, %107
  %154 = load i32*, i32** @s_nCounters, align 8
  %155 = load i64, i64* %9, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  %159 = load i64, i64* %9, align 8
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = sub i64 %162, 1
  %164 = icmp eq i64 %159, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %153
  %166 = load i64, i64* @TRUE, align 8
  store i64 %166, i64* @s_bNextStage, align 8
  br label %167

167:                                              ; preds = %165, %153
  br label %172

168:                                              ; preds = %98
  br label %169

169:                                              ; preds = %168
  %170 = load i64, i64* %9, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %9, align 8
  br label %92

172:                                              ; preds = %167, %92
  br label %173

173:                                              ; preds = %17, %172, %90
  %174 = load i64, i64* @s_bNextStage, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @NextStage(i32 %177)
  br label %179

179:                                              ; preds = %16, %176, %173
  ret void
}

declare dso_local i32 @ok_int(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i64, i32, ...) #1

declare dso_local i32 @DoAction(i32, i64, i32, i32) #1

declare dso_local i32 @NextStage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
