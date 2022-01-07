; ModuleID = '/home/carl/AnghaBench/zfs/module/avl/extr_avl.c_avl_rotation.c'
source_filename = "/home/carl/AnghaBench/zfs/module/avl/extr_avl.c_avl_rotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_14__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32)* @avl_rotation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avl_rotation(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 1, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = ashr i32 %26, 1
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = call %struct.TYPE_14__* @AVL_XPARENT(%struct.TYPE_14__* %30)
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %12, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %34, i64 %36
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %13, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = call i32 @AVL_XCHILD(%struct.TYPE_14__* %39)
  store i32 %40, i32* %18, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %42 = call i32 @AVL_XBALANCE(%struct.TYPE_14__* %41)
  store i32 %42, i32* %19, align 4
  %43 = load i32, i32* %19, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %118

46:                                               ; preds = %3
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %19, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %19, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %52, i64 %54
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %14, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %60, i64 %62
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %63, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %65 = icmp ne %struct.TYPE_14__* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %46
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = call i32 @AVL_SETPARENT(%struct.TYPE_14__* %67, %struct.TYPE_14__* %68)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @AVL_SETCHILD(%struct.TYPE_14__* %70, i32 %71)
  br label %73

73:                                               ; preds = %66, %46
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %77, i64 %79
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %80, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = load i32, i32* %19, align 4
  %83 = sub nsw i32 0, %82
  %84 = call i32 @AVL_SETBALANCE(%struct.TYPE_14__* %81, i32 %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @AVL_SETCHILD(%struct.TYPE_14__* %85, i32 %86)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %90 = call i32 @AVL_SETPARENT(%struct.TYPE_14__* %88, %struct.TYPE_14__* %89)
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %92 = load i32, i32* %19, align 4
  %93 = call i32 @AVL_SETBALANCE(%struct.TYPE_14__* %91, i32 %92)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %95 = load i32, i32* %18, align 4
  %96 = call i32 @AVL_SETCHILD(%struct.TYPE_14__* %94, i32 %95)
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %99 = call i32 @AVL_SETPARENT(%struct.TYPE_14__* %97, %struct.TYPE_14__* %98)
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %101 = icmp ne %struct.TYPE_14__* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %73
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %105, align 8
  %107 = load i32, i32* %18, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %106, i64 %108
  store %struct.TYPE_14__* %103, %struct.TYPE_14__** %109, align 8
  br label %114

110:                                              ; preds = %73
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  store %struct.TYPE_14__* %111, %struct.TYPE_14__** %113, align 8
  br label %114

114:                                              ; preds = %110, %102
  %115 = load i32, i32* %19, align 4
  %116 = icmp eq i32 %115, 0
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %4, align 4
  br label %245

118:                                              ; preds = %3
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %121, i64 %123
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %124, align 8
  store %struct.TYPE_14__* %125, %struct.TYPE_14__** %15, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %128, i64 %130
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  store %struct.TYPE_14__* %132, %struct.TYPE_14__** %17, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %135, i64 %137
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  store %struct.TYPE_14__* %139, %struct.TYPE_14__** %16, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %143, i64 %145
  store %struct.TYPE_14__* %140, %struct.TYPE_14__** %146, align 8
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %148 = icmp ne %struct.TYPE_14__* %147, null
  br i1 %148, label %149, label %156

149:                                              ; preds = %118
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %152 = call i32 @AVL_SETPARENT(%struct.TYPE_14__* %150, %struct.TYPE_14__* %151)
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @AVL_SETCHILD(%struct.TYPE_14__* %153, i32 %154)
  br label %156

156:                                              ; preds = %149, %118
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %160, i64 %162
  store %struct.TYPE_14__* %157, %struct.TYPE_14__** %163, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %165 = icmp ne %struct.TYPE_14__* %164, null
  br i1 %165, label %166, label %173

166:                                              ; preds = %156
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %169 = call i32 @AVL_SETPARENT(%struct.TYPE_14__* %167, %struct.TYPE_14__* %168)
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @AVL_SETCHILD(%struct.TYPE_14__* %170, i32 %171)
  br label %173

173:                                              ; preds = %166, %156
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %175 = call i32 @AVL_XBALANCE(%struct.TYPE_14__* %174)
  store i32 %175, i32* %7, align 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %179, i64 %181
  store %struct.TYPE_14__* %176, %struct.TYPE_14__** %182, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %173
  %188 = load i32, i32* %10, align 4
  br label %190

189:                                              ; preds = %173
  br label %190

190:                                              ; preds = %189, %187
  %191 = phi i32 [ %188, %187 ], [ 0, %189 ]
  %192 = call i32 @AVL_SETBALANCE(%struct.TYPE_14__* %183, i32 %191)
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %195 = call i32 @AVL_SETPARENT(%struct.TYPE_14__* %193, %struct.TYPE_14__* %194)
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %197 = load i32, i32* %8, align 4
  %198 = call i32 @AVL_SETCHILD(%struct.TYPE_14__* %196, i32 %197)
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %202, i64 %204
  store %struct.TYPE_14__* %199, %struct.TYPE_14__** %205, align 8
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* %10, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %190
  %211 = load i32, i32* %11, align 4
  br label %213

212:                                              ; preds = %190
  br label %213

213:                                              ; preds = %212, %210
  %214 = phi i32 [ %211, %210 ], [ 0, %212 ]
  %215 = call i32 @AVL_SETBALANCE(%struct.TYPE_14__* %206, i32 %214)
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %218 = call i32 @AVL_SETPARENT(%struct.TYPE_14__* %216, %struct.TYPE_14__* %217)
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @AVL_SETCHILD(%struct.TYPE_14__* %219, i32 %220)
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %223 = call i32 @AVL_SETBALANCE(%struct.TYPE_14__* %222, i32 0)
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %226 = call i32 @AVL_SETPARENT(%struct.TYPE_14__* %224, %struct.TYPE_14__* %225)
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %228 = load i32, i32* %18, align 4
  %229 = call i32 @AVL_SETCHILD(%struct.TYPE_14__* %227, i32 %228)
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %231 = icmp ne %struct.TYPE_14__* %230, null
  br i1 %231, label %232, label %240

232:                                              ; preds = %213
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %235, align 8
  %237 = load i32, i32* %18, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %236, i64 %238
  store %struct.TYPE_14__* %233, %struct.TYPE_14__** %239, align 8
  br label %244

240:                                              ; preds = %213
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 0
  store %struct.TYPE_14__* %241, %struct.TYPE_14__** %243, align 8
  br label %244

244:                                              ; preds = %240, %232
  store i32 1, i32* %4, align 4
  br label %245

245:                                              ; preds = %244, %114
  %246 = load i32, i32* %4, align 4
  ret i32 %246
}

declare dso_local %struct.TYPE_14__* @AVL_XPARENT(%struct.TYPE_14__*) #1

declare dso_local i32 @AVL_XCHILD(%struct.TYPE_14__*) #1

declare dso_local i32 @AVL_XBALANCE(%struct.TYPE_14__*) #1

declare dso_local i32 @AVL_SETPARENT(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @AVL_SETCHILD(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @AVL_SETBALANCE(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
