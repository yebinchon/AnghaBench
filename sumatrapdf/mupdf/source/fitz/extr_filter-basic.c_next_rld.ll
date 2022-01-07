; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-basic.c_next_rld.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-basic.c_next_rld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32, i32, i8*, i32 }

@EOF = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"premature end of data in run length decode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i64)* @next_rld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_rld(i32* %0, %struct.TYPE_4__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %8, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %9, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 128
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @EOF, align 4
  store i32 %23, i32* %4, align 4
  br label %210

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = icmp ugt i64 %25, 8
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i64 8, i64* %7, align 8
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i8*, i8** %9, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %10, align 8
  br label %32

32:                                               ; preds = %173, %28
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %36, label %174

36:                                               ; preds = %32
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %174

42:                                               ; preds = %36
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %104

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @fz_read_byte(i32* %48, i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i32 128, i32* %62, align 8
  br label %174

63:                                               ; preds = %47
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %66, 128
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %68, %63
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp sgt i32 %78, 128
  br i1 %79, label %80, label %103

80:                                               ; preds = %75
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 257, %83
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @fz_read_byte(i32* %87, i32 %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ult i8* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %80
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %101 = call i32 @fz_throw(i32* %99, i32 %100, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %98, %80
  br label %103

103:                                              ; preds = %102, %75
  br label %104

104:                                              ; preds = %103, %42
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %107, 128
  br i1 %108, label %109, label %144

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %134, %109
  %111 = load i8*, i8** %9, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = icmp ult i8* %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br label %119

119:                                              ; preds = %114, %110
  %120 = phi i1 [ false, %110 ], [ %118, %114 ]
  br i1 %120, label %121, label %143

121:                                              ; preds = %119
  %122 = load i32*, i32** %5, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = call i8* @fz_read_byte(i32* %122, i32 %125)
  %127 = ptrtoint i8* %126 to i32
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %121
  %131 = load i32*, i32** %5, align 8
  %132 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %133 = call i32 @fz_throw(i32* %131, i32 %132, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %134

134:                                              ; preds = %130, %121
  %135 = load i32, i32* %11, align 4
  %136 = trunc i32 %135 to i8
  %137 = load i8*, i8** %9, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %9, align 8
  store i8 %136, i8* %137, align 1
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %140, align 4
  br label %110

143:                                              ; preds = %119
  br label %144

144:                                              ; preds = %143, %104
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = icmp sgt i32 %147, 128
  br i1 %148, label %149, label %173

149:                                              ; preds = %144
  br label %150

150:                                              ; preds = %161, %149
  %151 = load i8*, i8** %9, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = icmp ult i8* %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br label %159

159:                                              ; preds = %154, %150
  %160 = phi i1 [ false, %150 ], [ %158, %154 ]
  br i1 %160, label %161, label %172

161:                                              ; preds = %159
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 3
  %164 = load i8*, i8** %163, align 8
  %165 = ptrtoint i8* %164 to i8
  %166 = load i8*, i8** %9, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %9, align 8
  store i8 %165, i8* %166, align 1
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %169, align 4
  br label %150

172:                                              ; preds = %159
  br label %173

173:                                              ; preds = %172, %144
  br label %32

174:                                              ; preds = %60, %41, %32
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  store i8* %177, i8** %179, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  store i8* %180, i8** %182, align 8
  %183 = load i8*, i8** %9, align 8
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = ptrtoint i8* %183 to i64
  %188 = ptrtoint i8* %186 to i64
  %189 = sub i64 %187, %188
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %193, %189
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %191, align 8
  %196 = load i8*, i8** %9, align 8
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = icmp eq i8* %196, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %174
  %202 = load i32, i32* @EOF, align 4
  store i32 %202, i32* %4, align 4
  br label %210

203:                                              ; preds = %174
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %205, align 8
  %208 = load i8, i8* %206, align 1
  %209 = zext i8 %208 to i32
  store i32 %209, i32* %4, align 4
  br label %210

210:                                              ; preds = %203, %201, %22
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local i8* @fz_read_byte(i32*, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
