; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msadp32.acm/extr_msadp32.c_cvtMMms16K.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msadp32.acm/extr_msadp32.c_cvtMMms16K.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@MSADPCM_CoeffSet = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8*, i32*, i8*, i32*)* @cvtMMms16K to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvtMMms16K(%struct.TYPE_9__* %0, i8* %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = bitcast %struct.TYPE_7__* %21 to %struct.TYPE_8__*
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %16, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %26, %31
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %35, %40
  %42 = sdiv i32 %34, %41
  %43 = call i32 @min(i32 %32, i32 %42)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %44, %49
  %51 = load i32*, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %16, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %54, %59
  %61 = load i32*, i32** %10, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %16, align 4
  %63 = sub nsw i32 %62, 2
  store i32 %63, i32* %16, align 4
  br label %64

64:                                               ; preds = %203, %5
  %65 = load i32, i32* %17, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %206

67:                                               ; preds = %64
  %68 = load i8*, i8** %7, align 8
  store i8* %68, i8** %18, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp sle i32 %71, 6
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32*, i32** @MSADPCM_CoeffSet, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %7, align 8
  %78 = load i8, i8* %76, align 1
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %14, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @R16(i8* %82)
  store i32 %83, i32* %11, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  store i8* %85, i8** %7, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @R16(i8* %86)
  store i32 %87, i32* %12, align 4
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  store i8* %89, i8** %7, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @R16(i8* %90)
  store i32 %91, i32* %13, align 4
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  store i8* %93, i8** %7, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 8
  br i1 %99, label %100, label %143

100:                                              ; preds = %67
  %101 = load i32, i32* %13, align 4
  %102 = call zeroext i8 @C168(i32 %101)
  %103 = load i8*, i8** %9, align 8
  store i8 %102, i8* %103, align 1
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %9, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call zeroext i8 @C168(i32 %106)
  %108 = load i8*, i8** %9, align 8
  store i8 %107, i8* %108, align 1
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %9, align 8
  %111 = load i32, i32* %16, align 4
  store i32 %111, i32* %15, align 4
  br label %112

112:                                              ; preds = %139, %100
  %113 = load i32, i32* %15, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %142

115:                                              ; preds = %112
  %116 = load i8*, i8** %7, align 8
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = ashr i32 %118, 4
  %120 = trunc i32 %119 to i8
  %121 = call i32 @process_nibble(i8 zeroext %120, i32* %11, i32* %12, i32* %13, i32* %14)
  %122 = load i32, i32* %12, align 4
  %123 = call zeroext i8 @C168(i32 %122)
  %124 = load i8*, i8** %9, align 8
  store i8 %123, i8* %124, align 1
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %9, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %7, align 8
  %129 = load i8, i8* %127, align 1
  %130 = zext i8 %129 to i32
  %131 = and i32 %130, 15
  %132 = trunc i32 %131 to i8
  %133 = call i32 @process_nibble(i8 zeroext %132, i32* %11, i32* %12, i32* %13, i32* %14)
  %134 = load i32, i32* %12, align 4
  %135 = call zeroext i8 @C168(i32 %134)
  %136 = load i8*, i8** %9, align 8
  store i8 %135, i8* %136, align 1
  %137 = load i8*, i8** %9, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %9, align 8
  br label %139

139:                                              ; preds = %115
  %140 = load i32, i32* %15, align 4
  %141 = sub nsw i32 %140, 2
  store i32 %141, i32* %15, align 4
  br label %112

142:                                              ; preds = %112
  br label %194

143:                                              ; preds = %67
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 16
  br i1 %149, label %150, label %193

150:                                              ; preds = %143
  %151 = load i8*, i8** %9, align 8
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @W16(i8* %151, i32 %152)
  %154 = load i8*, i8** %9, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 2
  store i8* %155, i8** %9, align 8
  %156 = load i8*, i8** %9, align 8
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @W16(i8* %156, i32 %157)
  %159 = load i8*, i8** %9, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 2
  store i8* %160, i8** %9, align 8
  %161 = load i32, i32* %16, align 4
  store i32 %161, i32* %15, align 4
  br label %162

162:                                              ; preds = %189, %150
  %163 = load i32, i32* %15, align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %192

165:                                              ; preds = %162
  %166 = load i8*, i8** %7, align 8
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = ashr i32 %168, 4
  %170 = trunc i32 %169 to i8
  %171 = call i32 @process_nibble(i8 zeroext %170, i32* %11, i32* %12, i32* %13, i32* %14)
  %172 = load i8*, i8** %9, align 8
  %173 = load i32, i32* %12, align 4
  %174 = call i32 @W16(i8* %172, i32 %173)
  %175 = load i8*, i8** %9, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 2
  store i8* %176, i8** %9, align 8
  %177 = load i8*, i8** %7, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %7, align 8
  %179 = load i8, i8* %177, align 1
  %180 = zext i8 %179 to i32
  %181 = and i32 %180, 15
  %182 = trunc i32 %181 to i8
  %183 = call i32 @process_nibble(i8 zeroext %182, i32* %11, i32* %12, i32* %13, i32* %14)
  %184 = load i8*, i8** %9, align 8
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @W16(i8* %184, i32 %185)
  %187 = load i8*, i8** %9, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 2
  store i8* %188, i8** %9, align 8
  br label %189

189:                                              ; preds = %165
  %190 = load i32, i32* %15, align 4
  %191 = sub nsw i32 %190, 2
  store i32 %191, i32* %15, align 4
  br label %162

192:                                              ; preds = %162
  br label %193

193:                                              ; preds = %192, %143
  br label %194

194:                                              ; preds = %193, %142
  %195 = load i8*, i8** %18, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %195, i64 %201
  store i8* %202, i8** %7, align 8
  br label %203

203:                                              ; preds = %194
  %204 = load i32, i32* %17, align 4
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %17, align 4
  br label %64

206:                                              ; preds = %64
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @R16(i8*) #1

declare dso_local zeroext i8 @C168(i32) #1

declare dso_local i32 @process_nibble(i8 zeroext, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @W16(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
