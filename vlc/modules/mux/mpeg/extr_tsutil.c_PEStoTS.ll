; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_tsutil.c_PEStoTS.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_tsutil.c_PEStoTS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, %struct.TYPE_7__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PEStoTS(i8* %0, i32 (i8*, %struct.TYPE_7__*)* %1, %struct.TYPE_7__* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i8*, %struct.TYPE_7__*)*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %7, align 8
  store i32 (i8*, %struct.TYPE_7__*)* %1, i32 (i8*, %struct.TYPE_7__*)** %8, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %13, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %28

28:                                               ; preds = %164, %6
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @__MIN(i32 %29, i32 184)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 184
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %17, align 4
  %34 = call %struct.TYPE_7__* @block_Alloc(i32 188)
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %18, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 71, i32* %38, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 64, i32 0
  %43 = load i32, i32* %10, align 4
  %44 = ashr i32 %43, 8
  %45 = and i32 %44, 31
  %46 = or i32 %42, %45
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 255
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 48, i32 16
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %60, %62
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  store i32 %63, i32* %67, align 4
  store i32 0, i32* %15, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  %71 = srem i32 %70, 16
  %72 = load i32*, i32** %12, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %121

75:                                               ; preds = %28
  %76 = load i32, i32* %16, align 4
  %77 = sub nsw i32 184, %76
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %19, align 4
  %79 = sub nsw i32 %78, 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* %19, align 4
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %86, label %120

86:                                               ; preds = %75
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 5
  store i32 0, i32* %90, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %86
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 5
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, 128
  store i32 %100, i32* %98, align 4
  %101 = load i32*, i32** %11, align 8
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %94, %86
  store i32 6, i32* %20, align 4
  br label %103

103:                                              ; preds = %116, %102
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* %19, align 4
  %106 = add nsw i32 6, %105
  %107 = sub nsw i32 %106, 2
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %20, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 255, i32* %115, align 4
  br label %116

116:                                              ; preds = %109
  %117 = load i32, i32* %20, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %20, align 4
  br label %103

119:                                              ; preds = %103
  br label %120

120:                                              ; preds = %119, %75
  br label %121

121:                                              ; preds = %120, %28
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %16, align 4
  %126 = sub nsw i32 188, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32*, i32** %13, align 8
  %130 = load i32, i32* %16, align 4
  %131 = call i32 @memcpy(i32* %128, i32* %129, i32 %130)
  %132 = load i32, i32* %16, align 4
  %133 = load i32*, i32** %13, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32* %135, i32** %13, align 8
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %14, align 4
  %138 = sub nsw i32 %137, %136
  store i32 %138, i32* %14, align 4
  %139 = load i32 (i8*, %struct.TYPE_7__*)*, i32 (i8*, %struct.TYPE_7__*)** %8, align 8
  %140 = load i8*, i8** %7, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %142 = call i32 %139(i8* %140, %struct.TYPE_7__* %141)
  %143 = load i32, i32* %14, align 4
  %144 = icmp sle i32 %143, 0
  br i1 %144, label %145, label %164

145:                                              ; preds = %121
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  store %struct.TYPE_7__* %148, %struct.TYPE_7__** %21, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %150, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %152 = call i32 @block_Release(%struct.TYPE_7__* %151)
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %154 = icmp eq %struct.TYPE_7__* %153, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  ret void

156:                                              ; preds = %145
  store i32 1, i32* %15, align 4
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  store %struct.TYPE_7__* %157, %struct.TYPE_7__** %9, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* %14, align 4
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  store i32* %163, i32** %13, align 8
  br label %164

164:                                              ; preds = %156, %121
  br label %28
}

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local %struct.TYPE_7__* @block_Alloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
