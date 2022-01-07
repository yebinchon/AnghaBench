; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GPOS_apply_CursiveAttachment.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GPOS_apply_CursiveAttachment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"Cursive Attachment Positioning Subtable\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Found linkage %x[%s] %x[%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Cursive Attachment Positioning: Format %i Unhandled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_13__*, i32*, i32, i32, i32, %struct.TYPE_14__*)* @GPOS_apply_CursiveAttachment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GPOS_apply_CursiveAttachment(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1, i32* %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_14__* %6) #0 {
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_14__, align 8
  %22 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_14__* %6, %struct.TYPE_14__** %14, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %7
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %27, %7
  %34 = phi i1 [ false, %7 ], [ %32, %27 ]
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 -1, i32 1
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %16, align 4
  %39 = add i32 %37, %38
  %40 = load i32, i32* %12, align 4
  %41 = icmp uge i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %191

43:                                               ; preds = %33
  %44 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %45

45:                                               ; preds = %187, %43
  %46 = load i32, i32* %15, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @GET_BE_WORD(i64 %49)
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %190

52:                                               ; preds = %45
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call i64 @GPOS_get_subtable(%struct.TYPE_15__* %53, i32 %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %17, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @GET_BE_WORD(i64 %59)
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %180

62:                                               ; preds = %52
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @GET_BE_WORD(i64 %65)
  store i32 %66, i32* %20, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %68 = bitcast %struct.TYPE_16__* %67 to i32*
  %69 = load i32, i32* %20, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @GSUB_is_glyph_covered(i32* %71, i32 %76)
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %18, align 4
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %80, label %179

80:                                               ; preds = %62
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = load i32, i32* %18, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %179

90:                                               ; preds = %80
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %92 = bitcast %struct.TYPE_16__* %91 to i32*
  %93 = load i32, i32* %20, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %16, align 4
  %99 = add i32 %97, %98
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @GSUB_is_glyph_covered(i32* %95, i32 %102)
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %19, align 4
  %105 = icmp ne i32 %104, -1
  br i1 %105, label %106, label %178

106:                                              ; preds = %90
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = load i32, i32* %19, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %178

116:                                              ; preds = %106
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = load i32, i32* %18, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @GET_BE_WORD(i64 %124)
  store i32 %125, i32* %20, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %127 = bitcast %struct.TYPE_16__* %126 to i32*
  %128 = load i32, i32* %20, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @GPOS_get_anchor_values(i32* %130, %struct.TYPE_14__* %21, i32 %131)
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = load i32, i32* %19, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @GET_BE_WORD(i64 %140)
  store i32 %141, i32* %20, align 4
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %143 = bitcast %struct.TYPE_16__* %142 to i32*
  %144 = load i32, i32* %20, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %13, align 4
  %148 = call i32 @GPOS_get_anchor_values(i32* %146, %struct.TYPE_14__* %22, i32 %147)
  %149 = load i32*, i32** %10, align 8
  %150 = load i32, i32* %11, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @wine_dbgstr_point(%struct.TYPE_14__* %21)
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %16, align 4
  %158 = add i32 %156, %157
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %155, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @wine_dbgstr_point(%struct.TYPE_14__* %22)
  %163 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %153, i32 %154, i32 %161, i32 %162)
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = sub nsw i64 %165, %167
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  store i64 %168, i64* %170, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = sub nsw i64 %172, %174
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  br label %191

178:                                              ; preds = %106, %90
  br label %179

179:                                              ; preds = %178, %80, %62
  br label %186

180:                                              ; preds = %52
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @GET_BE_WORD(i64 %183)
  %185 = call i32 @FIXME(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %180, %179
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %15, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %15, align 4
  br label %45

190:                                              ; preds = %45
  br label %191

191:                                              ; preds = %190, %116, %42
  ret void
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @GET_BE_WORD(i64) #1

declare dso_local i64 @GPOS_get_subtable(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @GSUB_is_glyph_covered(i32*, i32) #1

declare dso_local i32 @GPOS_get_anchor_values(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @wine_dbgstr_point(%struct.TYPE_14__*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
