; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/psaux/extr_pshints.c_cf2_hint_init.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/psaux/extr_pshints.c_cf2_hint_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i8*, i32, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i64, i8*, i8* }

@CF2_GhostBottom = common dso_local global i64 0, align 8
@CF2_GhostTop = common dso_local global i64 0, align 8
@CF2_PairBottom = common dso_local global i8* null, align 8
@CF2_PairTop = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i64, %struct.TYPE_11__*, i64, i64, i64)* @cf2_hint_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf2_hint_init(%struct.TYPE_10__* %0, i32 %1, i64 %2, %struct.TYPE_11__* %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %18 = call i32 @FT_ZERO(%struct.TYPE_10__* %17)
  %19 = load i32, i32* %9, align 4
  %20 = load i64, i64* %10, align 8
  %21 = call i64 @cf2_arrstack_getPointer(i32 %19, i64 %20)
  %22 = inttoptr i64 %21 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %16, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 4
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @SUB_INT32(i8* %25, i8* %28)
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* %15, align 8
  %31 = call i64 @cf2_intToFixed(i32 -21)
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %7
  %34 = load i64, i64* %14, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load i64, i64* @CF2_GhostBottom, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %48

45:                                               ; preds = %33
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %36
  br label %122

49:                                               ; preds = %7
  %50 = load i64, i64* %15, align 8
  %51 = call i64 @cf2_intToFixed(i32 -20)
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = load i64, i64* %14, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  br label %68

59:                                               ; preds = %53
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 4
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i64, i64* @CF2_GhostTop, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %59, %56
  br label %121

69:                                               ; preds = %49
  %70 = load i64, i64* %15, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %69
  %73 = load i64, i64* %14, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** @CF2_PairBottom, align 8
  %82 = ptrtoint i8* %81 to i64
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %95

85:                                               ; preds = %72
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 4
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** @CF2_PairTop, align 8
  %92 = ptrtoint i8* %91 to i64
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %85, %75
  br label %120

96:                                               ; preds = %69
  %97 = load i64, i64* %14, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 4
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** @CF2_PairBottom, align 8
  %106 = ptrtoint i8* %105 to i64
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  br label %119

109:                                              ; preds = %96
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  %115 = load i8*, i8** @CF2_PairTop, align 8
  %116 = ptrtoint i8* %115 to i64
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %109, %99
  br label %120

120:                                              ; preds = %119, %95
  br label %121

121:                                              ; preds = %120, %68
  br label %122

122:                                              ; preds = %121, %48
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %124 = call i64 @cf2_hint_isTop(%struct.TYPE_10__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %122
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 2, %132
  %134 = sext i32 %133 to i64
  %135 = call i8* @ADD_INT32(i8* %129, i64 %134)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %126, %122
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 2
  %141 = load i8*, i8** %140, align 8
  %142 = load i64, i64* %12, align 8
  %143 = call i8* @ADD_INT32(i8* %141, i64 %142)
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  %146 = load i64, i64* %13, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 4
  store i64 %146, i64* %148, align 8
  %149 = load i64, i64* %10, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %180

156:                                              ; preds = %138
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %180

161:                                              ; preds = %156
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %163 = call i64 @cf2_hint_isTop(%struct.TYPE_10__* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %161
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 8
  br label %177

171:                                              ; preds = %161
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 8
  br label %177

177:                                              ; preds = %171, %165
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %179 = call i32 @cf2_hint_lock(%struct.TYPE_10__* %178)
  br label %188

180:                                              ; preds = %156, %138
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 2
  %183 = load i8*, i8** %182, align 8
  %184 = load i64, i64* %13, align 8
  %185 = call i32 @FT_MulFix(i8* %183, i64 %184)
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 8
  br label %188

188:                                              ; preds = %180, %177
  ret void
}

declare dso_local i32 @FT_ZERO(%struct.TYPE_10__*) #1

declare dso_local i64 @cf2_arrstack_getPointer(i32, i64) #1

declare dso_local i64 @SUB_INT32(i8*, i8*) #1

declare dso_local i64 @cf2_intToFixed(i32) #1

declare dso_local i64 @cf2_hint_isTop(%struct.TYPE_10__*) #1

declare dso_local i8* @ADD_INT32(i8*, i64) #1

declare dso_local i32 @cf2_hint_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @FT_MulFix(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
