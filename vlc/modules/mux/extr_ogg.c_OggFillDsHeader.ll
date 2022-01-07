; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/extr_ogg.c_OggFillDsHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/extr_ogg.c_OggFillDsHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32*, i32*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i32)* @OggFillDsHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OggFillDsHeader(i32* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 11
  %11 = load i32, i32* %10, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  store i32 %11, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 10
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @memcpy(i32* %21, i32* %24, i32 8)
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 9
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @memcpy(i32* %33, i32* %36, i32 8)
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32* %45, i32** %8, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 4
  store i32 %47, i32* %7, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @SetQWLE(i32* %51, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 8
  store i32 %57, i32* %7, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @SetQWLE(i32* %61, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 8
  store i32 %67, i32* %7, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @SetDWLE(i32* %71, i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 4
  store i32 %77, i32* %7, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @SetDWLE(i32* %81, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 4
  store i32 %87, i32* %7, align 4
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @SetWLE(i32* %91, i32 %94)
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 2
  store i32 %97, i32* %7, align 4
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @SetWLE(i32* %101, i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 2
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %6, align 4
  switch i32 %108, label %164 [
    i32 128, label %109
    i32 129, label %131
  ]

109:                                              ; preds = %3
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @SetDWLE(i32* %113, i32 %118)
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @SetDWLE(i32* %124, i32 %129)
  br label %164

131:                                              ; preds = %3
  %132 = load i32*, i32** %4, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @SetWLE(i32* %135, i32 %140)
  %142 = load i32*, i32** %4, align 8
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @SetWLE(i32* %146, i32 %151)
  %153 = load i32*, i32** %4, align 8
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @SetDWLE(i32* %157, i32 %162)
  br label %164

164:                                              ; preds = %3, %131, %109
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 8
  store i32 %166, i32* %7, align 4
  %167 = load i32*, i32** %4, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @SetDWLE(i32* %170, i32 %173)
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, 4
  store i32 %176, i32* %7, align 4
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %198

181:                                              ; preds = %164
  %182 = load i32*, i32** %4, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %187 = bitcast %struct.TYPE_9__* %186 to i32*
  %188 = getelementptr inbounds i32, i32* %187, i64 80
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @memcpy(i32* %185, i32* %188, i32 %191)
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %7, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %7, align 4
  br label %198

198:                                              ; preds = %181, %164
  %199 = load i32*, i32** %8, align 8
  %200 = load i32, i32* %7, align 4
  %201 = sub nsw i32 %200, 1
  %202 = call i32 @SetDWLE(i32* %199, i32 %201)
  %203 = load i32, i32* %7, align 4
  ret i32 %203
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @SetQWLE(i32*, i32) #1

declare dso_local i32 @SetDWLE(i32*, i32) #1

declare dso_local i32 @SetWLE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
