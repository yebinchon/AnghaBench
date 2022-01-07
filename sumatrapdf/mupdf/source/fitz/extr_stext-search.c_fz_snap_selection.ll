; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-search.c_fz_snap_selection.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-search.c_fz_snap_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_13__, %struct.TYPE_18__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i8, %struct.TYPE_14__, %struct.TYPE_17__*, i8* }
%struct.TYPE_14__ = type { i8*, i8*, i8*, i8* }

@FZ_STEXT_BLOCK_TEXT = common dso_local global i64 0, align 8
@FZ_SELECT_CHARS = common dso_local global i32 0, align 4
@FZ_SELECT_WORDS = common dso_local global i32 0, align 4
@FZ_SELECT_LINES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_snap_selection(%struct.TYPE_19__* noalias sret %0, i32* %1, %struct.TYPE_15__* %2, i8** %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i8** %4, i8*** %10, align 8
  store i32 %5, i32* %11, align 4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %20 = load i8**, i8*** %9, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @find_closest_in_page(%struct.TYPE_15__* %19, i8* %21)
  store i32 %22, i32* %16, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %24 = load i8**, i8*** %10, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @find_closest_in_page(%struct.TYPE_15__* %23, i8* %25)
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %17, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %6
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %17, align 4
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %17, align 4
  br label %34

34:                                               ; preds = %30, %6
  %35 = load i8**, i8*** %9, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 2
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load i8**, i8*** %10, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  store i32 0, i32* %15, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  store %struct.TYPE_18__* %45, %struct.TYPE_18__** %12, align 8
  br label %46

46:                                               ; preds = %185, %34
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %48 = icmp ne %struct.TYPE_18__* %47, null
  br i1 %48, label %49, label %189

49:                                               ; preds = %46
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @FZ_STEXT_BLOCK_TEXT, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %185

56:                                               ; preds = %49
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  store %struct.TYPE_16__* %61, %struct.TYPE_16__** %13, align 8
  br label %62

62:                                               ; preds = %180, %56
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %64 = icmp ne %struct.TYPE_16__* %63, null
  br i1 %64, label %65, label %184

65:                                               ; preds = %62
  store i32 10, i32* %18, align 4
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  store %struct.TYPE_17__* %68, %struct.TYPE_17__** %14, align 8
  br label %69

69:                                               ; preds = %175, %65
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %71 = icmp ne %struct.TYPE_17__* %70, null
  br i1 %71, label %72, label %179

72:                                               ; preds = %69
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %113

76:                                               ; preds = %72
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @FZ_SELECT_CHARS, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %97, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @FZ_SELECT_WORDS, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i32, i32* %18, align 4
  %86 = icmp eq i32 %85, 32
  br i1 %86, label %97, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %18, align 4
  %89 = icmp eq i32 %88, 10
  br i1 %89, label %97, label %90

90:                                               ; preds = %87, %80
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @FZ_SELECT_LINES, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %90
  %95 = load i32, i32* %18, align 4
  %96 = icmp eq i32 %95, 10
  br i1 %96, label %97, label %112

97:                                               ; preds = %94, %87, %84, %76
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 3
  store i8* %101, i8** %102, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 2
  store i8* %106, i8** %107, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = load i8**, i8*** %9, align 8
  store i8* %110, i8** %111, align 8
  br label %112

112:                                              ; preds = %97, %94, %90
  br label %113

113:                                              ; preds = %112, %72
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %17, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %168

117:                                              ; preds = %113
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @FZ_SELECT_CHARS, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %131, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @FZ_SELECT_WORDS, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %146

125:                                              ; preds = %121
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load i8, i8* %127, align 8
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 32
  br i1 %130, label %131, label %146

131:                                              ; preds = %125, %117
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 3
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 1
  store i8* %135, i8** %136, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 2
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 0
  store i8* %140, i8** %141, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 3
  %144 = load i8*, i8** %143, align 8
  %145 = load i8**, i8*** %10, align 8
  store i8* %144, i8** %145, align 8
  br label %190

146:                                              ; preds = %125, %121
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %148, align 8
  %150 = icmp ne %struct.TYPE_17__* %149, null
  br i1 %150, label %167, label %151

151:                                              ; preds = %146
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 1
  store i8* %155, i8** %156, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %0, i32 0, i32 0
  store i8* %160, i8** %161, align 8
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = load i8**, i8*** %10, align 8
  store i8* %165, i8** %166, align 8
  br label %190

167:                                              ; preds = %146
  br label %168

168:                                              ; preds = %167, %113
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  %171 = load i8, i8* %170, align 8
  %172 = sext i8 %171 to i32
  store i32 %172, i32* %18, align 4
  %173 = load i32, i32* %15, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %15, align 4
  br label %175

175:                                              ; preds = %168
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %177, align 8
  store %struct.TYPE_17__* %178, %struct.TYPE_17__** %14, align 8
  br label %69

179:                                              ; preds = %69
  br label %180

180:                                              ; preds = %179
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %182, align 8
  store %struct.TYPE_16__* %183, %struct.TYPE_16__** %13, align 8
  br label %62

184:                                              ; preds = %62
  br label %185

185:                                              ; preds = %184, %55
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %187, align 8
  store %struct.TYPE_18__* %188, %struct.TYPE_18__** %12, align 8
  br label %46

189:                                              ; preds = %46
  br label %190

190:                                              ; preds = %189, %151, %131
  ret void
}

declare dso_local i32 @find_closest_in_page(%struct.TYPE_15__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
