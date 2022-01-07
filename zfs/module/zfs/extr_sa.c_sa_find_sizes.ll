; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_sa.c_sa_find_sizes.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_sa.c_sa_find_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i64 }

@SA_BONUS = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@DMU_OT_ZNODE = common dso_local global i64 0, align 8
@SA_SPILL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_7__*, i32, i32*, i64, i32, i32*, i32*, i32*)* @sa_find_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa_find_sizes(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i32 %2, i32* %3, i64 %4, i32 %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32 0, i32* %20, align 4
  %27 = load i64, i64* %15, align 8
  %28 = load i64, i64* @SA_BONUS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %9
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32*, i32** %18, align 8
  store i32 0, i32* %36, align 4
  %37 = load i32*, i32** %17, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* @B_TRUE, align 4
  %39 = load i32*, i32** %19, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %10, align 4
  br label %213

40:                                               ; preds = %30, %9
  %41 = load i32*, i32** %17, align 8
  store i32 -1, i32* %41, align 4
  %42 = load i32*, i32** %18, align 8
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* @B_FALSE, align 4
  %44 = load i32*, i32** %19, align 8
  store i32 %43, i32* %44, align 4
  store i32 0, i32* %23, align 4
  %45 = load i32*, i32** %14, align 8
  %46 = call i64 @SA_BONUSTYPE_FROM_DB(i32* %45)
  %47 = load i64, i64* @DMU_OT_ZNODE, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i64 0, i64 4
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %22, align 4
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @IS_P2ALIGNED(i32 %52, i32 8)
  %54 = call i32 @ASSERT(i32 %53)
  store i32 0, i32* %21, align 4
  br label %55

55:                                               ; preds = %198, %40
  %56 = load i32, i32* %21, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %201

59:                                               ; preds = %55
  %60 = load i32*, i32** %18, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @P2ROUNDUP(i32 %61, i32 8)
  %63 = load i32*, i32** %18, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %65 = load i32, i32* %21, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32*, i32** %18, align 8
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %69
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 4
  %75 = load i32*, i32** %19, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %59
  br label %198

79:                                               ; preds = %59
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %82 = load i32, i32* %21, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @SA_REGISTERED_LEN(%struct.TYPE_6__* %80, i32 %86)
  %88 = icmp eq i64 %87, 0
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %24, align 4
  %90 = load i32, i32* %24, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %79
  %93 = load i32, i32* %20, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %20, align 4
  br label %95

95:                                               ; preds = %92, %79
  %96 = load i32, i32* %22, align 4
  %97 = sext i32 %96 to i64
  %98 = load i32, i32* %24, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %20, align 4
  %102 = icmp sgt i32 %101, 1
  br label %103

103:                                              ; preds = %100, %95
  %104 = phi i1 [ false, %95 ], [ %102, %100 ]
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i64 4, i64 0
  %107 = add i64 %97, %106
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %26, align 4
  %109 = load i64, i64* %15, align 8
  %110 = load i64, i64* @SA_BONUS, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %103
  %113 = load i32*, i32** %17, align 8
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load i32*, i32** %18, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %26, align 4
  %120 = call i32 @P2ROUNDUP(i32 %119, i32 8)
  %121 = add nsw i32 %118, %120
  %122 = sext i32 %121 to i64
  %123 = load i32, i32* %16, align 4
  %124 = sext i32 %123 to i64
  %125 = sub i64 %124, 4
  %126 = icmp ugt i64 %122, %125
  br label %127

127:                                              ; preds = %116, %112, %103
  %128 = phi i1 [ false, %112 ], [ false, %103 ], [ %126, %116 ]
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %25, align 4
  %130 = load i32, i32* %24, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %176

132:                                              ; preds = %127
  %133 = load i32, i32* %20, align 4
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %135, label %176

135:                                              ; preds = %132
  %136 = load i64, i64* %15, align 8
  %137 = load i64, i64* @SA_SPILL, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %146, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %26, align 4
  %141 = load i32*, i32** %18, align 8
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %140, %142
  %144 = load i32, i32* %16, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %160

146:                                              ; preds = %139, %135
  %147 = load i32, i32* %26, align 4
  store i32 %147, i32* %22, align 4
  %148 = load i32*, i32** %17, align 8
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, -1
  br i1 %150, label %154, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* %25, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %151, %146
  %155 = load i32, i32* %23, align 4
  %156 = sext i32 %155 to i64
  %157 = add i64 %156, 4
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %23, align 4
  br label %159

159:                                              ; preds = %154, %151
  br label %175

160:                                              ; preds = %139
  %161 = load i64, i64* %15, align 8
  %162 = load i64, i64* @SA_BONUS, align 8
  %163 = icmp eq i64 %161, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 @ASSERT(i32 %164)
  %166 = load i32*, i32** %17, align 8
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %172

169:                                              ; preds = %160
  %170 = load i32, i32* %21, align 4
  %171 = load i32*, i32** %17, align 8
  store i32 %170, i32* %171, align 4
  br label %172

172:                                              ; preds = %169, %160
  %173 = load i32, i32* @B_TRUE, align 4
  %174 = load i32*, i32** %19, align 8
  store i32 %173, i32* %174, align 4
  br label %198

175:                                              ; preds = %159
  br label %176

176:                                              ; preds = %175, %132, %127
  %177 = load i32, i32* %25, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i32, i32* %21, align 4
  %181 = load i32*, i32** %17, align 8
  store i32 %180, i32* %181, align 4
  br label %182

182:                                              ; preds = %179, %176
  %183 = load i32*, i32** %18, align 8
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %22, align 4
  %186 = call i32 @P2ROUNDUP(i32 %185, i32 8)
  %187 = add nsw i32 %184, %186
  %188 = load i32, i32* %16, align 4
  %189 = icmp sgt i32 %187, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %182
  %191 = load i64, i64* %15, align 8
  %192 = load i64, i64* @SA_BONUS, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %190
  %195 = load i32, i32* @B_TRUE, align 4
  %196 = load i32*, i32** %19, align 8
  store i32 %195, i32* %196, align 4
  br label %197

197:                                              ; preds = %194, %190, %182
  br label %198

198:                                              ; preds = %197, %172, %78
  %199 = load i32, i32* %21, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %21, align 4
  br label %55

201:                                              ; preds = %55
  %202 = load i32*, i32** %19, align 8
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = load i32, i32* %23, align 4
  %207 = load i32, i32* %22, align 4
  %208 = sub nsw i32 %207, %206
  store i32 %208, i32* %22, align 4
  br label %209

209:                                              ; preds = %205, %201
  %210 = load i32, i32* %22, align 4
  %211 = call i32 @P2ROUNDUP(i32 %210, i32 8)
  store i32 %211, i32* %22, align 4
  %212 = load i32, i32* %22, align 4
  store i32 %212, i32* %10, align 4
  br label %213

213:                                              ; preds = %209, %35
  %214 = load i32, i32* %10, align 4
  ret i32 %214
}

declare dso_local i64 @SA_BONUSTYPE_FROM_DB(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @IS_P2ALIGNED(i32, i32) #1

declare dso_local i32 @P2ROUNDUP(i32, i32) #1

declare dso_local i64 @SA_REGISTERED_LEN(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
