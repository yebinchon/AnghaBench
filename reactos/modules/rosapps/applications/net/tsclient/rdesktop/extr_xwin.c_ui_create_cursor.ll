; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_create_cursor.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_create_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@DoRed = common dso_local global i32 0, align 4
@DoBlue = common dso_local global i32 0, align 4
@DoGreen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui_create_cursor(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_8__, align 4
  %18 = alloca %struct.TYPE_8__, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 7
  %31 = sdiv i32 %30, 8
  store i32 %31, i32* %25, align 4
  %32 = load i32, i32* %25, align 4
  %33 = load i32, i32* %12, align 4
  %34 = mul nsw i32 %32, %33
  store i32 %34, i32* %26, align 4
  %35 = load i32, i32* %26, align 4
  %36 = call i64 @xmalloc(i32 %35)
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %20, align 8
  %38 = load i32*, i32** %20, align 8
  %39 = load i32, i32* %26, align 4
  %40 = call i32 @memset(i32* %38, i32 0, i32 %39)
  %41 = load i32, i32* %26, align 4
  %42 = call i64 @xmalloc(i32 %41)
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %22, align 8
  %44 = load i32*, i32** %22, align 8
  %45 = load i32, i32* %26, align 4
  %46 = call i32 @memset(i32* %44, i32 0, i32 %45)
  store i32 0, i32* %27, align 4
  br label %47

47:                                               ; preds = %132, %7
  %48 = load i32, i32* %27, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %135

51:                                               ; preds = %47
  %52 = load i32, i32* %25, align 4
  %53 = load i32, i32* %26, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %26, align 4
  %55 = load i32*, i32** %20, align 8
  %56 = load i32, i32* %26, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32* %58, i32** %21, align 8
  %59 = load i32*, i32** %22, align 8
  %60 = load i32, i32* %26, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32* %62, i32** %23, align 8
  store i32 0, i32* %28, align 4
  br label %63

63:                                               ; preds = %128, %51
  %64 = load i32, i32* %28, align 4
  %65 = load i32, i32* %25, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %131

67:                                               ; preds = %63
  store i32 128, i32* %24, align 4
  br label %68

68:                                               ; preds = %118, %67
  %69 = load i32, i32* %24, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %121

71:                                               ; preds = %68
  %72 = load i32*, i32** %14, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = load i32*, i32** %14, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i32*, i32** %14, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %81, %76, %71
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* %87, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %24, align 4
  %91 = and i32 %89, %90
  %92 = load i32*, i32** %21, align 8
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %24, align 4
  %96 = load i32*, i32** %23, align 8
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %95
  store i32 %98, i32* %96, align 4
  br label %115

99:                                               ; preds = %81
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %24, align 4
  %103 = and i32 %101, %102
  %104 = load i32*, i32** %21, align 8
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %103
  store i32 %106, i32* %104, align 4
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* %107, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %24, align 4
  %111 = and i32 %109, %110
  %112 = load i32*, i32** %23, align 8
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %111
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %99, %86
  %116 = load i32*, i32** %14, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  store i32* %117, i32** %14, align 8
  br label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %24, align 4
  %120 = ashr i32 %119, 1
  store i32 %120, i32* %24, align 4
  br label %68

121:                                              ; preds = %68
  %122 = load i32*, i32** %13, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %13, align 8
  %124 = load i32*, i32** %21, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %21, align 8
  %126 = load i32*, i32** %23, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %23, align 8
  br label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %28, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %28, align 4
  br label %63

131:                                              ; preds = %63
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %27, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %27, align 4
  br label %47

135:                                              ; preds = %47
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store i32 65535, i32* %136, align 4
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i32 65535, i32* %137, align 4
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32 65535, i32* %138, align 4
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  store i32 0, i32* %139, align 4
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i32 0, i32* %140, align 4
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32 0, i32* %141, align 4
  %142 = load i32, i32* @DoRed, align 4
  %143 = load i32, i32* @DoBlue, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @DoGreen, align 4
  %146 = or i32 %144, %145
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  store i32 %146, i32* %147, align 4
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32*, i32** %20, align 8
  %153 = call i64 @ui_create_glyph(%struct.TYPE_9__* %149, i32 %150, i32 %151, i32* %152)
  store i64 %153, i64* %16, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load i32*, i32** %22, align 8
  %158 = call i64 @ui_create_glyph(%struct.TYPE_9__* %154, i32 %155, i32 %156, i32* %157)
  store i64 %158, i64* %15, align 8
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i64, i64* %16, align 8
  %163 = trunc i64 %162 to i32
  %164 = load i64, i64* %15, align 8
  %165 = trunc i64 %164 to i32
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @XCreatePixmapCursor(i32 %161, i32 %163, i32 %165, %struct.TYPE_8__* %18, %struct.TYPE_8__* %17, i32 %166, i32 %167)
  store i32 %168, i32* %19, align 4
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %170 = load i64, i64* %15, align 8
  %171 = call i32 @ui_destroy_glyph(%struct.TYPE_9__* %169, i64 %170)
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %173 = load i64, i64* %16, align 8
  %174 = call i32 @ui_destroy_glyph(%struct.TYPE_9__* %172, i64 %173)
  %175 = load i32*, i32** %22, align 8
  %176 = call i32 @xfree(i32* %175)
  %177 = load i32*, i32** %20, align 8
  %178 = call i32 @xfree(i32* %177)
  %179 = load i32, i32* %19, align 4
  ret i32 %179
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @ui_create_glyph(%struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i32 @XCreatePixmapCursor(i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @ui_destroy_glyph(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @xfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
