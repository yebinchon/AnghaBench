; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_mirror.c_RV32VerticalMirror.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_mirror.c_RV32VerticalMirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32)* @RV32VerticalMirror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RV32VerticalMirror(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %34, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %26, i64 %44
  store i32* %45, i32** %10, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %11, align 8
  br label %54

54:                                               ; preds = %147, %4
  %55 = load i32*, i32** %9, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = icmp ult i32* %55, %56
  br i1 %57, label %58, label %192

58:                                               ; preds = %54
  %59 = load i32*, i32** %9, align 8
  %60 = bitcast i32* %59 to i8**
  store i8** %60, i8*** %12, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = bitcast i32* %61 to i8**
  store i8** %62, i8*** %13, align 8
  %63 = load i8**, i8*** %12, align 8
  store i8** %63, i8*** %14, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %64, i64 %73
  %75 = bitcast i32* %74 to i8**
  store i8** %75, i8*** %15, align 8
  br label %76

76:                                               ; preds = %146, %58
  %77 = load i8**, i8*** %12, align 8
  %78 = load i8**, i8*** %15, align 8
  %79 = icmp ult i8** %77, %78
  br i1 %79, label %80, label %147

80:                                               ; preds = %76
  %81 = load i8**, i8*** %12, align 8
  %82 = load i8**, i8*** %14, align 8
  %83 = load i8**, i8*** %15, align 8
  %84 = load i8**, i8*** %14, align 8
  %85 = ptrtoint i8** %83 to i64
  %86 = ptrtoint i8** %84 to i64
  %87 = sub i64 %85, %86
  %88 = sdiv exact i64 %87, 8
  %89 = sdiv i64 %88, 2
  %90 = getelementptr inbounds i8*, i8** %82, i64 %89
  %91 = icmp ult i8** %81, %90
  br i1 %91, label %92, label %119

92:                                               ; preds = %80
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i8**, i8*** %12, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i32 1
  store i8** %97, i8*** %12, align 8
  %98 = load i8*, i8** %96, align 8
  %99 = load i8**, i8*** %13, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i32 1
  store i8** %100, i8*** %13, align 8
  store i8* %98, i8** %99, align 8
  br label %118

101:                                              ; preds = %92
  %102 = load i8**, i8*** %15, align 8
  %103 = load i8**, i8*** %12, align 8
  %104 = load i8**, i8*** %14, align 8
  %105 = ptrtoint i8** %103 to i64
  %106 = ptrtoint i8** %104 to i64
  %107 = sub i64 %105, %106
  %108 = sdiv exact i64 %107, 8
  %109 = sub i64 0, %108
  %110 = getelementptr inbounds i8*, i8** %102, i64 %109
  store i8** %110, i8*** %16, align 8
  %111 = load i8**, i8*** %12, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i32 1
  store i8** %112, i8*** %12, align 8
  %113 = load i8**, i8*** %16, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = ptrtoint i8* %114 to i32
  %116 = load i32*, i32** %11, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %11, align 8
  store i32 %115, i32* %116, align 4
  br label %118

118:                                              ; preds = %101, %95
  br label %146

119:                                              ; preds = %80
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %119
  %123 = load i8**, i8*** %15, align 8
  %124 = load i8**, i8*** %12, align 8
  %125 = load i8**, i8*** %14, align 8
  %126 = ptrtoint i8** %124 to i64
  %127 = ptrtoint i8** %125 to i64
  %128 = sub i64 %126, %127
  %129 = sdiv exact i64 %128, 8
  %130 = sub i64 0, %129
  %131 = getelementptr inbounds i8*, i8** %123, i64 %130
  store i8** %131, i8*** %17, align 8
  %132 = load i8**, i8*** %12, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i32 1
  store i8** %133, i8*** %12, align 8
  %134 = load i8**, i8*** %17, align 8
  %135 = load i8*, i8** %134, align 8
  %136 = ptrtoint i8* %135 to i32
  %137 = load i32*, i32** %11, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %11, align 8
  store i32 %136, i32* %137, align 4
  br label %145

139:                                              ; preds = %119
  %140 = load i8**, i8*** %12, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i32 1
  store i8** %141, i8*** %12, align 8
  %142 = load i8*, i8** %140, align 8
  %143 = load i8**, i8*** %13, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i32 1
  store i8** %144, i8*** %13, align 8
  store i8* %142, i8** %143, align 8
  br label %145

145:                                              ; preds = %139, %122
  br label %146

146:                                              ; preds = %145, %118
  br label %76

147:                                              ; preds = %76
  %148 = load i8**, i8*** %12, align 8
  %149 = bitcast i8** %148 to i32*
  store i32* %149, i32** %9, align 8
  %150 = load i8**, i8*** %13, align 8
  %151 = bitcast i8** %150 to i32*
  store i32* %151, i32** %11, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = sub nsw i32 %159, %167
  %169 = load i32*, i32** %9, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32* %171, i32** %9, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = sub nsw i32 %179, %187
  %189 = load i32*, i32** %11, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32* %191, i32** %11, align 8
  br label %54

192:                                              ; preds = %54
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
