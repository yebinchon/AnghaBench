; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_ui_create_cursor.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_ui_create_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i64, i64, i64, i64, i64 }

@__const.ui_create_cursor.white = private unnamed_addr constant [3 x i32] [i32 255, i32 255, i32 255], align 4
@server = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui_create_cursor(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca [3 x i32], align 4
  %19 = alloca [3 x i32], align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_3__*, align 8
  %22 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %23 = bitcast [3 x i32]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast ([3 x i32]* @__const.ui_create_cursor.white to i8*), i64 12, i1 false)
  %24 = bitcast [3 x i32]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 12, i1 false)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @server, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32* %26, i32** %22, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %29, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32* @xmalloc(i32 %33)
  store i32* %34, i32** %17, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 4, %36
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %37, %39
  %41 = udiv i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32* @xmalloc(i32 %42)
  store i32* %43, i32** %15, align 8
  %44 = load i32*, i32** %11, align 8
  store i32* %44, i32** %16, align 8
  store i32 0, i32* %14, align 4
  br label %45

45:                                               ; preds = %83, %6
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %45
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %79, %49
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sdiv i32 %52, 8
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %82

55:                                               ; preds = %50
  %56 = load i32*, i32** %16, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* %14, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load i32, i32* %9, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sdiv i32 %62, 8
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %56, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %68, -1
  %70 = load i32*, i32** %15, align 8
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sdiv i32 %73, 8
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %70, i64 %77
  store i32 %69, i32* %78, align 4
  br label %79

79:                                               ; preds = %55
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %50

82:                                               ; preds = %50
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %45

86:                                               ; preds = %45
  store i32 0, i32* %14, align 4
  br label %87

87:                                               ; preds = %195, %86
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %198

91:                                               ; preds = %87
  store i32 0, i32* %13, align 4
  br label %92

92:                                               ; preds = %191, %91
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %194

96:                                               ; preds = %92
  %97 = load i32*, i32** %12, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %98, 1
  %100 = load i32, i32* %14, align 4
  %101 = sub nsw i32 %99, %100
  %102 = load i32, i32* %9, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %103, %104
  %106 = mul nsw i32 %105, 3
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %97, i64 %107
  store i32* %108, i32** %20, align 8
  %109 = load i32*, i32** %20, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp sgt i32 %111, 128
  br i1 %112, label %123, label %113

113:                                              ; preds = %96
  %114 = load i32*, i32** %20, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp sgt i32 %116, 128
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load i32*, i32** %20, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = load i32, i32* %120, align 4
  %122 = icmp sgt i32 %121, 128
  br i1 %122, label %123, label %178

123:                                              ; preds = %118, %113, %96
  %124 = load i32*, i32** %15, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %9, align 4
  %127 = mul nsw i32 %125, %126
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %127, %128
  %130 = sdiv i32 %129, 8
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %124, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %13, align 4
  %135 = and i32 %134, 7
  %136 = ashr i32 128, %135
  %137 = and i32 %133, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %165, label %139

139:                                              ; preds = %123
  %140 = load i32*, i32** %22, align 8
  %141 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %142 = call i32 @vncLookupColour(i32* %140, i32* %141)
  %143 = load i32*, i32** %17, align 8
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* %9, align 4
  %146 = mul nsw i32 %144, %145
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %143, i64 %149
  store i32 %142, i32* %150, align 4
  %151 = load i32, i32* %13, align 4
  %152 = and i32 %151, 7
  %153 = ashr i32 128, %152
  %154 = load i32*, i32** %15, align 8
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %9, align 4
  %157 = mul nsw i32 %155, %156
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %157, %158
  %160 = sdiv i32 %159, 8
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %154, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %153
  store i32 %164, i32* %162, align 4
  br label %177

165:                                              ; preds = %123
  %166 = load i32*, i32** %22, align 8
  %167 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %168 = call i32 @vncLookupColour(i32* %166, i32* %167)
  %169 = load i32*, i32** %17, align 8
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %9, align 4
  %172 = mul nsw i32 %170, %171
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %169, i64 %175
  store i32 %168, i32* %176, align 4
  br label %177

177:                                              ; preds = %165, %139
  br label %190

178:                                              ; preds = %118
  %179 = load i32*, i32** %22, align 8
  %180 = load i32*, i32** %20, align 8
  %181 = call i32 @vncLookupColour(i32* %179, i32* %180)
  %182 = load i32*, i32** %17, align 8
  %183 = load i32, i32* %14, align 4
  %184 = load i32, i32* %9, align 4
  %185 = mul nsw i32 %183, %184
  %186 = load i32, i32* %13, align 4
  %187 = add nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %182, i64 %188
  store i32 %181, i32* %189, align 4
  br label %190

190:                                              ; preds = %178, %177
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %13, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %13, align 4
  br label %92

194:                                              ; preds = %92
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  br label %87

198:                                              ; preds = %87
  %199 = call i32* @xmalloc(i32 4)
  %200 = bitcast i32* %199 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %200, %struct.TYPE_3__** %21, align 8
  %201 = load i32, i32* %9, align 4
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 8
  %204 = load i32, i32* %10, align 4
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* %7, align 4
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 8
  %210 = load i32, i32* %8, align 4
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 3
  store i32 %210, i32* %212, align 4
  %213 = load i32*, i32** %15, align 8
  %214 = bitcast i32* %213 to i8*
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 4
  store i8* %214, i8** %216, align 8
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 13
  store i64 0, i64* %218, align 8
  %219 = load i32*, i32** %17, align 8
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 5
  store i32* %219, i32** %221, align 8
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 12
  store i64 0, i64* %223, align 8
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 8
  store i32 65535, i32* %225, align 8
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 7
  store i32 65535, i32* %227, align 4
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 6
  store i32 65535, i32* %229, align 8
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 9
  store i64 0, i64* %231, align 8
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 10
  store i64 0, i64* %233, align 8
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 11
  store i64 0, i64* %235, align 8
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %237 = ptrtoint %struct.TYPE_3__* %236 to i32
  ret i32 %237
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @xmalloc(i32) #2

declare dso_local i32 @vncLookupColour(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
