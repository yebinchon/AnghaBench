; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_ui_draw_text.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_ui_draw_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@MIX_OPAQUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"this shouldn't be happening\0A\00", align 1
@TEXT2_IMPLICIT_X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_draw_text(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32* %15, i32 %16) #0 {
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %18, align 4
  store i32 %1, i32* %19, align 4
  store i32 %2, i32* %20, align 4
  store i32 %3, i32* %21, align 4
  store i32 %4, i32* %22, align 4
  store i32 %5, i32* %23, align 4
  store i32 %6, i32* %24, align 4
  store i32 %7, i32* %25, align 4
  store i32 %8, i32* %26, align 4
  store i32 %9, i32* %27, align 4
  store i32 %10, i32* %28, align 4
  store i32 %11, i32* %29, align 4
  store i32 %12, i32* %30, align 4
  store i32 %13, i32* %31, align 4
  store i32 %14, i32* %32, align 4
  store i32* %15, i32** %33, align 8
  store i32 %16, i32* %34, align 4
  %40 = load i32, i32* %29, align 4
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %49

42:                                               ; preds = %17
  %43 = load i32, i32* %27, align 4
  %44 = load i32, i32* %28, align 4
  %45 = load i32, i32* %29, align 4
  %46 = load i32, i32* %30, align 4
  %47 = load i32, i32* %31, align 4
  %48 = call i32 @ui_rect(i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  br label %61

49:                                               ; preds = %17
  %50 = load i32, i32* %20, align 4
  %51 = load i32, i32* @MIX_OPAQUE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i32, i32* %23, align 4
  %55 = load i32, i32* %24, align 4
  %56 = load i32, i32* %25, align 4
  %57 = load i32, i32* %26, align 4
  %58 = load i32, i32* %31, align 4
  %59 = call i32 @ui_rect(i32 %54, i32 %55, i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %49
  br label %61

61:                                               ; preds = %60, %42
  store i32 0, i32* %36, align 4
  br label %62

62:                                               ; preds = %203, %61
  %63 = load i32, i32* %36, align 4
  %64 = load i32, i32* %34, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %204

66:                                               ; preds = %62
  %67 = load i32*, i32** %33, align 8
  %68 = load i32, i32* %36, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %197 [
    i32 255, label %72
    i32 254, label %114
  ]

72:                                               ; preds = %66
  %73 = load i32, i32* %36, align 4
  %74 = add nsw i32 %73, 2
  %75 = load i32, i32* %34, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %72
  %78 = load i32*, i32** %33, align 8
  %79 = load i32, i32* %36, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %33, align 8
  %85 = load i32, i32* %36, align 4
  %86 = load i32*, i32** %33, align 8
  %87 = load i32, i32* %36, align 4
  %88 = add nsw i32 %87, 2
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %85, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %84, i64 %93
  %95 = load i32*, i32** %33, align 8
  %96 = load i32, i32* %36, align 4
  %97 = add nsw i32 %96, 2
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @cache_put_text(i32 %83, i32* %94, i32 %100)
  br label %104

102:                                              ; preds = %72
  %103 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %203

104:                                              ; preds = %77
  %105 = load i32, i32* %36, align 4
  %106 = add nsw i32 %105, 3
  %107 = load i32, i32* %34, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* %34, align 4
  %109 = load i32*, i32** %33, align 8
  %110 = load i32, i32* %36, align 4
  %111 = add nsw i32 %110, 3
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  store i32* %113, i32** %33, align 8
  store i32 0, i32* %36, align 4
  br label %203

114:                                              ; preds = %66
  %115 = load i32*, i32** %33, align 8
  %116 = load i32, i32* %36, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call %struct.TYPE_3__* @cache_get_text(i32 %120)
  store %struct.TYPE_3__* %121, %struct.TYPE_3__** %39, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %123 = icmp ne %struct.TYPE_3__* %122, null
  br i1 %123, label %124, label %196

124:                                              ; preds = %114
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i32*
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %160

132:                                              ; preds = %124
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* @TEXT2_IMPLICIT_X, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %160, label %137

137:                                              ; preds = %132
  %138 = load i32, i32* %19, align 4
  %139 = and i32 %138, 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %137
  %142 = load i32*, i32** %33, align 8
  %143 = load i32, i32* %36, align 4
  %144 = add nsw i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %22, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %22, align 4
  br label %159

150:                                              ; preds = %137
  %151 = load i32*, i32** %33, align 8
  %152 = load i32, i32* %36, align 4
  %153 = add nsw i32 %152, 2
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %21, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %21, align 4
  br label %159

159:                                              ; preds = %150, %141
  br label %160

160:                                              ; preds = %159, %132, %124
  %161 = load i32, i32* %36, align 4
  %162 = add nsw i32 %161, 2
  %163 = load i32, i32* %34, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i32, i32* %36, align 4
  %167 = add nsw i32 %166, 3
  store i32 %167, i32* %36, align 4
  br label %171

168:                                              ; preds = %160
  %169 = load i32, i32* %36, align 4
  %170 = add nsw i32 %169, 2
  store i32 %170, i32* %36, align 4
  br label %171

171:                                              ; preds = %168, %165
  %172 = load i32, i32* %36, align 4
  %173 = load i32, i32* %34, align 4
  %174 = sub nsw i32 %173, %172
  store i32 %174, i32* %34, align 4
  %175 = load i32*, i32** %33, align 8
  %176 = load i32, i32* %36, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32* %178, i32** %33, align 8
  store i32 0, i32* %36, align 4
  store i32 0, i32* %37, align 4
  br label %179

179:                                              ; preds = %192, %171
  %180 = load i32, i32* %37, align 4
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %195

185:                                              ; preds = %179
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = inttoptr i64 %188 to i32*
  %190 = load i32, i32* %37, align 4
  %191 = call i32 @DO_GLYPH(i32* %189, i32 %190)
  br label %192

192:                                              ; preds = %185
  %193 = load i32, i32* %37, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %37, align 4
  br label %179

195:                                              ; preds = %179
  br label %196

196:                                              ; preds = %195, %114
  br label %203

197:                                              ; preds = %66
  %198 = load i32*, i32** %33, align 8
  %199 = load i32, i32* %36, align 4
  %200 = call i32 @DO_GLYPH(i32* %198, i32 %199)
  %201 = load i32, i32* %36, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %36, align 4
  br label %203

203:                                              ; preds = %197, %196, %104, %102
  br label %62

204:                                              ; preds = %62
  ret void
}

declare dso_local i32 @ui_rect(i32, i32, i32, i32, i32) #1

declare dso_local i32 @cache_put_text(i32, i32*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.TYPE_3__* @cache_get_text(i32) #1

declare dso_local i32 @DO_GLYPH(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
