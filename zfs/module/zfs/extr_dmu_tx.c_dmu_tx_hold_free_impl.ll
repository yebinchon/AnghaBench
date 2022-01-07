; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_tx.c_dmu_tx_hold_free_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_tx.c_dmu_tx_hold_free_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@DMU_OBJECT_END = common dso_local global i32 0, align 4
@SPA_BLKPTRSHIFT = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32, i32)* @dmu_tx_hold_free_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmu_tx_hold_free_impl(%struct.TYPE_13__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %7, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %8, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = call i32 @dmu_tx_count_dnode(%struct.TYPE_13__* %28)
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = icmp sge i32 %30, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  br label %216

41:                                               ; preds = %3
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @DMU_OBJECT_END, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %45, %41
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = call i32 @dmu_tx_count_dnode(%struct.TYPE_13__* %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %56
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66, %63
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dmu_tx_count_write(%struct.TYPE_13__* %73, i32 0, i32 %76)
  br label %78

78:                                               ; preds = %72, %66
  br label %108

79:                                               ; preds = %56
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 1, %83
  %85 = call i32 @IS_P2ALIGNED(i32 %80, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %79
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @dmu_tx_count_write(%struct.TYPE_13__* %88, i32 %89, i32 1)
  br label %91

91:                                               ; preds = %87, %79
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %92, %93
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 1, %97
  %99 = call i32 @IS_P2ALIGNED(i32 %94, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %91
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %103, %104
  %106 = call i32 @dmu_tx_count_write(%struct.TYPE_13__* %102, i32 %105, i32 1)
  br label %107

107:                                              ; preds = %101, %91
  br label %108

108:                                              ; preds = %107, %78
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp sgt i32 %111, 1
  br i1 %112, label %113, label %216

113:                                              ; preds = %108
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %116, %119
  %121 = load i32, i32* @SPA_BLKPTRSHIFT, align 4
  %122 = sub nsw i32 %120, %121
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %10, align 4
  %125 = ashr i32 %123, %124
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %126, %127
  %129 = load i32, i32* %10, align 4
  %130 = ashr i32 %128, %129
  store i32 %130, i32* %12, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @ASSERT(i32 %135)
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %113
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %142

142:                                              ; preds = %141, %113
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %149 = call i32* @zio_root(i32 %147, i32* null, i32* null, i32 %148)
  store i32* %149, i32** %13, align 8
  %150 = load i32, i32* %11, align 4
  store i32 %150, i32* %14, align 4
  br label %151

151:                                              ; preds = %203, %142
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* %12, align 4
  %154 = icmp sle i32 %152, %153
  br i1 %154, label %155, label %206

155:                                              ; preds = %151
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %10, align 4
  %158 = shl i32 %156, %157
  store i32 %158, i32* %15, align 4
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %160 = call i32 @dnode_next_offset(%struct.TYPE_11__* %159, i32 0, i32* %15, i32 2, i32 1, i32 0)
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %10, align 4
  %163 = ashr i32 %161, %162
  store i32 %163, i32* %14, align 4
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* @ESRCH, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %171, label %167

167:                                              ; preds = %155
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %12, align 4
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167, %155
  br label %206

172:                                              ; preds = %167
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 8
  %179 = load i32*, i32** %13, align 8
  %180 = call i32 @zio_wait(i32* %179)
  br label %216

181:                                              ; preds = %172
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = shl i32 1, %186
  %188 = load i32, i32* @FTAG, align 4
  %189 = call i32 @zfs_refcount_add_many(i32* %183, i32 %187, i32 %188)
  %190 = load i32*, i32** %13, align 8
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %192 = load i32, i32* %14, align 4
  %193 = call i32 @dmu_tx_check_ioerr(i32* %190, %struct.TYPE_11__* %191, i32 1, i32 %192)
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %181
  %197 = load i32, i32* %9, align 4
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 8
  %200 = load i32*, i32** %13, align 8
  %201 = call i32 @zio_wait(i32* %200)
  br label %216

202:                                              ; preds = %181
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %14, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %14, align 4
  br label %151

206:                                              ; preds = %171, %151
  %207 = load i32*, i32** %13, align 8
  %208 = call i32 @zio_wait(i32* %207)
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %9, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = load i32, i32* %9, align 4
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 8
  br label %216

215:                                              ; preds = %206
  br label %216

216:                                              ; preds = %40, %175, %196, %211, %215, %108
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_tx_count_dnode(%struct.TYPE_13__*) #1

declare dso_local i32 @dmu_tx_count_write(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @IS_P2ALIGNED(i32, i32) #1

declare dso_local i32* @zio_root(i32, i32*, i32*, i32) #1

declare dso_local i32 @dnode_next_offset(%struct.TYPE_11__*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @zio_wait(i32*) #1

declare dso_local i32 @zfs_refcount_add_many(i32*, i32, i32) #1

declare dso_local i32 @dmu_tx_check_ioerr(i32*, %struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
