; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-taskq.c_taskq_create.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-taskq.c_taskq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i64, i32, i64, i32, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@TASKQ_CPR_SAFE = common dso_local global i32 0, align 4
@TASKQ_THREADS_CPU_PCT = common dso_local global i32 0, align 4
@KM_PUSHPAGE = common dso_local global i32 0, align 4
@TASKQ_ACTIVE = common dso_local global i32 0, align 4
@TASKQID_INITIAL = common dso_local global i8* null, align 8
@TQ_LOCK_GENERAL = common dso_local global i32 0, align 4
@TASKQ_PREPOPULATE = common dso_local global i32 0, align 4
@TQ_PUSHPAGE = common dso_local global i32 0, align 4
@TQ_NEW = common dso_local global i32 0, align 4
@TASKQ_DYNAMIC = common dso_local global i32 0, align 4
@spl_taskq_thread_dynamic = common dso_local global i64 0, align 8
@tq_list_sem = common dso_local global i32 0, align 4
@tq_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @taskq_create(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load i32, i32* %11, align 4
  %25 = icmp sge i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @INT_MAX, align 4
  %30 = icmp sle i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @TASKQ_CPR_SAFE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @TASKQ_THREADS_CPU_PCT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %6
  %45 = load i32, i32* %9, align 4
  %46 = icmp sle i32 %45, 100
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = icmp sge i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @MIN(i32 %53, i32 100)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @MAX(i32 %55, i32 0)
  store i32 %56, i32* %9, align 4
  %57 = call i32 (...) @num_online_cpus()
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sdiv i32 %59, 100
  %61 = call i32 @MAX(i32 %60, i32 1)
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %44, %6
  %63 = load i32, i32* @KM_PUSHPAGE, align 4
  %64 = call %struct.TYPE_8__* @kmem_alloc(i32 128, i32 %63)
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %14, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %66 = icmp eq %struct.TYPE_8__* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  br label %227

68:                                               ; preds = %62
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 9
  %71 = call i32 @spin_lock_init(i32* %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 23
  %74 = call i32 @INIT_LIST_HEAD(i32* %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 22
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @kmem_strdup(i8* %78)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 21
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 20
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 7
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 19
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 18
  store i64 0, i64* %101, align 8
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @TASKQ_ACTIVE, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load i8*, i8** @TASKQID_INITIAL, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 17
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** @TASKQID_INITIAL, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 16
  store i8* %110, i8** %112, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 15
  %115 = call i32 @INIT_LIST_HEAD(i32* %114)
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 14
  %118 = call i32 @INIT_LIST_HEAD(i32* %117)
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 13
  %121 = call i32 @INIT_LIST_HEAD(i32* %120)
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 12
  %124 = call i32 @INIT_LIST_HEAD(i32* %123)
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 11
  %127 = call i32 @init_waitqueue_head(i32* %126)
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 8
  %130 = call i32 @init_waitqueue_head(i32* %129)
  %131 = load i32, i32* @TQ_LOCK_GENERAL, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 10
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 5
  %136 = call i32 @INIT_LIST_HEAD(i32* %135)
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* @TASKQ_PREPOPULATE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %169

141:                                              ; preds = %68
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 9
  %144 = load i64, i64* %19, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 10
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @spin_lock_irqsave_nested(i32* %143, i64 %144, i32 %147)
  store i32 0, i32* %18, align 4
  br label %149

149:                                              ; preds = %161, %141
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %149
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %156 = load i32, i32* @TQ_PUSHPAGE, align 4
  %157 = load i32, i32* @TQ_NEW, align 4
  %158 = or i32 %156, %157
  %159 = call i32 @task_alloc(%struct.TYPE_8__* %155, i32 %158, i64* %19)
  %160 = call i32 @task_done(%struct.TYPE_8__* %154, i32 %159)
  br label %161

161:                                              ; preds = %153
  %162 = load i32, i32* %18, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %18, align 4
  br label %149

164:                                              ; preds = %149
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 9
  %167 = load i64, i64* %19, align 8
  %168 = call i32 @spin_unlock_irqrestore(i32* %166, i64 %167)
  br label %169

169:                                              ; preds = %164, %68
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* @TASKQ_DYNAMIC, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load i64, i64* @spl_taskq_thread_dynamic, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  store i32 1, i32* %9, align 4
  br label %178

178:                                              ; preds = %177, %174, %169
  store i32 0, i32* %18, align 4
  br label %179

179:                                              ; preds = %193, %178
  %180 = load i32, i32* %18, align 4
  %181 = load i32, i32* %9, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %196

183:                                              ; preds = %179
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %185 = call i32* @taskq_thread_create(%struct.TYPE_8__* %184)
  store i32* %185, i32** %15, align 8
  %186 = load i32*, i32** %15, align 8
  %187 = icmp eq i32* %186, null
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  store i32 1, i32* %17, align 4
  br label %192

189:                                              ; preds = %183
  %190 = load i32, i32* %16, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %16, align 4
  br label %192

192:                                              ; preds = %189, %188
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %18, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %18, align 4
  br label %179

196:                                              ; preds = %179
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 8
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %16, align 4
  %204 = icmp eq i32 %202, %203
  %205 = zext i1 %204 to i32
  %206 = call i32 @wait_event(i32 %199, i32 %205)
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 7
  store i64 0, i64* %208, align 8
  %209 = load i32, i32* %17, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %196
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %213 = call i32 @taskq_destroy(%struct.TYPE_8__* %212)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %14, align 8
  br label %225

214:                                              ; preds = %196
  %215 = call i32 @down_write(i32* @tq_list_sem)
  %216 = load i8*, i8** %8, align 8
  %217 = call i64 @taskq_find_by_name(i8* %216)
  %218 = add nsw i64 %217, 1
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 6
  store i64 %218, i64* %220, align 8
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 5
  %223 = call i32 @list_add_tail(i32* %222, i32* @tq_list)
  %224 = call i32 @up_write(i32* @tq_list_sem)
  br label %225

225:                                              ; preds = %214, %211
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %226, %struct.TYPE_8__** %7, align 8
  br label %227

227:                                              ; preds = %225, %67
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %228
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local %struct.TYPE_8__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kmem_strdup(i8*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_irqsave_nested(i32*, i64, i32) #1

declare dso_local i32 @task_done(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @task_alloc(%struct.TYPE_8__*, i32, i64*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32* @taskq_thread_create(%struct.TYPE_8__*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @taskq_destroy(%struct.TYPE_8__*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @taskq_find_by_name(i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
