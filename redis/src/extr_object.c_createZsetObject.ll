; ModuleID = '/home/carl/AnghaBench/redis/src/extr_object.c_createZsetObject.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_object.c_createZsetObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@zsetDictType = common dso_local global i32 0, align 4
@OBJ_ZSET = common dso_local global i32 0, align 4
@OBJ_ENCODING_SKIPLIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @createZsetObject() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = call %struct.TYPE_7__* @zmalloc(i32 8)
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %1, align 8
  %4 = call i32 @dictCreate(i32* @zsetDictType, i32* null)
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32 %4, i32* %6, align 4
  %7 = call i32 (...) @zslCreate()
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @OBJ_ZSET, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %12 = call %struct.TYPE_8__* @createObject(i32 %10, %struct.TYPE_7__* %11)
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %2, align 8
  %13 = load i32, i32* @OBJ_ENCODING_SKIPLIST, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %16
}

declare dso_local %struct.TYPE_7__* @zmalloc(i32) #1

declare dso_local i32 @dictCreate(i32*, i32*) #1

declare dso_local i32 @zslCreate(...) #1

declare dso_local %struct.TYPE_8__* @createObject(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
