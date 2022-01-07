; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-xref.c_pdf_get_xref_entry.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-xref.c_pdf_get_xref_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32*, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Negative object number requested\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @pdf_get_xref_entry(i32* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %17 = call i32 @fz_throw(i32* %15, i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %14, %3
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sle i32 %19, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  br label %33

32:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %32, %24
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %39, %33
  br label %44

44:                                               ; preds = %123, %43
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %126

50:                                               ; preds = %44
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %55
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %8, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %122

62:                                               ; preds = %50
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %9, align 8
  br label %66

66:                                               ; preds = %117, %62
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %68 = icmp ne %struct.TYPE_8__* %67, null
  br i1 %68, label %69, label %121

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %85, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %79, %82
  %84 = icmp sge i32 %76, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %75, %69
  br label %117

86:                                               ; preds = %75
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %90, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 %95
  store %struct.TYPE_9__* %96, %struct.TYPE_9__** %11, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %86
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %107, i32* %113, align 4
  br label %114

114:                                              ; preds = %106, %101
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %115, %struct.TYPE_9__** %4, align 8
  br label %212

116:                                              ; preds = %86
  br label %117

117:                                              ; preds = %116, %85
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  store %struct.TYPE_8__* %120, %struct.TYPE_8__** %9, align 8
  br label %66

121:                                              ; preds = %66
  br label %122

122:                                              ; preds = %121, %50
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %44

126:                                              ; preds = %44
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 0, i32* %132, align 4
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %134 = icmp eq %struct.TYPE_10__* %133, null
  br i1 %134, label %141, label %135

135:                                              ; preds = %126
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %189

141:                                              ; preds = %135, %126
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i64 %148
  store %struct.TYPE_10__* %149, %struct.TYPE_10__** %8, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  store %struct.TYPE_8__* %152, %struct.TYPE_8__** %9, align 8
  br label %153

153:                                              ; preds = %184, %141
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %155 = icmp ne %struct.TYPE_8__* %154, null
  br i1 %155, label %156, label %188

156:                                              ; preds = %153
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp sge i32 %157, %160
  br i1 %161, label %162, label %183

162:                                              ; preds = %156
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %166, %169
  %171 = icmp slt i32 %163, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %162
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sub nsw i32 %176, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i64 %181
  store %struct.TYPE_9__* %182, %struct.TYPE_9__** %4, align 8
  br label %212

183:                                              ; preds = %162, %156
  br label %184

184:                                              ; preds = %183
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  store %struct.TYPE_8__* %187, %struct.TYPE_8__** %9, align 8
  br label %153

188:                                              ; preds = %153
  br label %189

189:                                              ; preds = %188, %135
  %190 = load i32*, i32** %5, align 8
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %192 = load i32, i32* %7, align 4
  %193 = add nsw i32 %192, 1
  %194 = call i32 @ensure_solid_xref(i32* %190, %struct.TYPE_11__* %191, i32 %193, i32 0)
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 4
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i64 0
  store %struct.TYPE_10__* %198, %struct.TYPE_10__** %8, align 8
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %200, align 8
  store %struct.TYPE_8__* %201, %struct.TYPE_8__** %9, align 8
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 2
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %203, align 8
  %205 = load i32, i32* %7, align 4
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sub nsw i32 %205, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i64 %210
  store %struct.TYPE_9__* %211, %struct.TYPE_9__** %4, align 8
  br label %212

212:                                              ; preds = %189, %172, %114
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %213
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @ensure_solid_xref(i32*, %struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
