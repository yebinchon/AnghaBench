; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_run.c_ME_InsertRunAtCursor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_run.c_ME_InsertRunAtCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, %struct.TYPE_29__*, i64 }
%struct.TYPE_29__ = type { i32, i64 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_28__ = type { i64, %struct.TYPE_27__* }

@diRun = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Shift length:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_27__* @ME_InsertRunAtCursor(%struct.TYPE_26__* %0, %struct.TYPE_28__* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  store %struct.TYPE_27__* %19, %struct.TYPE_27__** %14, align 8
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %6
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %27, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %24
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %38, align 8
  %40 = load i32, i32* @diRun, align 4
  %41 = call %struct.TYPE_27__* @ME_FindItemFwd(%struct.TYPE_27__* %39, i32 %40)
  store %struct.TYPE_27__* %41, %struct.TYPE_27__** %14, align 8
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %43 = icmp ne %struct.TYPE_27__* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %46, align 8
  store %struct.TYPE_27__* %47, %struct.TYPE_27__** %14, align 8
  br label %48

48:                                               ; preds = %44, %36
  br label %56

49:                                               ; preds = %24
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %52 = call i32 @ME_SplitRunSimple(%struct.TYPE_26__* %50, %struct.TYPE_28__* %51)
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %54, align 8
  store %struct.TYPE_27__* %55, %struct.TYPE_27__** %14, align 8
  br label %56

56:                                               ; preds = %49, %48
  br label %57

57:                                               ; preds = %56, %6
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %65, %70
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @add_undo_delete_run(%struct.TYPE_26__* %58, i64 %71, i32 %72)
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call %struct.TYPE_27__* @ME_MakeRun(i32* %74, i32 %75)
  store %struct.TYPE_27__* %76, %struct.TYPE_27__** %13, align 8
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 2
  store i64 %81, i64* %85, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  store i64 %87, i64* %91, align 8
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %95, align 8
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 1
  store %struct.TYPE_29__* %96, %struct.TYPE_29__** %100, align 8
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @ME_InsertString(i32 %107, i64 %112, i32* %113, i32 %114)
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %118 = call i32 @ME_InsertBefore(%struct.TYPE_27__* %116, %struct.TYPE_27__* %117)
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @ME_PropagateCharOffset(%struct.TYPE_27__* %121, i32 %122)
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %128, align 8
  %130 = call i32 @get_di_from_para(%struct.TYPE_29__* %129)
  %131 = call i32 @mark_para_rewrap(%struct.TYPE_26__* %124, i32 %130)
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %133 = load i32, i32* @diRun, align 4
  %134 = call %struct.TYPE_27__* @ME_FindItemBack(%struct.TYPE_27__* %132, i32 %133)
  store %struct.TYPE_27__* %134, %struct.TYPE_27__** %15, align 8
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %136 = icmp ne %struct.TYPE_27__* %135, null
  br i1 %136, label %137, label %193

137:                                              ; preds = %57
  store i32 0, i32* %16, align 4
  br label %138

138:                                              ; preds = %189, %137
  %139 = load i32, i32* %16, align 4
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %192

144:                                              ; preds = %138
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %146, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %151, align 8
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %154 = icmp eq %struct.TYPE_27__* %152, %153
  br i1 %154, label %155, label %188

155:                                              ; preds = %144
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %157, align 8
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %164, %169
  br i1 %170, label %171, label %188

171:                                              ; preds = %155
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %174, align 8
  %176 = load i32, i32* %16, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 1
  store %struct.TYPE_27__* %172, %struct.TYPE_27__** %179, align 8
  %180 = load i32, i32* %11, align 4
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %182, align 8
  %184 = load i32, i32* %16, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 0
  store i32 %180, i32* %187, align 8
  br label %188

188:                                              ; preds = %171, %155, %144
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %16, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %16, align 4
  br label %138

192:                                              ; preds = %138
  br label %193

193:                                              ; preds = %192, %57
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  ret %struct.TYPE_27__* %194
}

declare dso_local %struct.TYPE_27__* @ME_FindItemFwd(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @ME_SplitRunSimple(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

declare dso_local i32 @add_undo_delete_run(%struct.TYPE_26__*, i64, i32) #1

declare dso_local %struct.TYPE_27__* @ME_MakeRun(i32*, i32) #1

declare dso_local i32 @ME_InsertString(i32, i64, i32*, i32) #1

declare dso_local i32 @ME_InsertBefore(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @ME_PropagateCharOffset(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @mark_para_rewrap(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @get_di_from_para(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_27__* @ME_FindItemBack(%struct.TYPE_27__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
