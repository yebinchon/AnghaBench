; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_docListDiscardEmpty.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_docListDiscardEmpty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@DL_POSITIONS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @docListDiscardEmpty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @docListDiscardEmpty(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DL_POSITIONS, align 8
  %13 = icmp sge i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = call i32 @readerInit(i32* %3, %struct.TYPE_8__* %16)
  %18 = load i64, i64* @DL_POSITIONS, align 8
  %19 = call i32 @docListInit(%struct.TYPE_8__* %4, i64 %18, i32* null, i32 0)
  br label %20

20:                                               ; preds = %39, %1
  %21 = call i32 @atEnd(i32* %3)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = call i32 @readDocid(i32* %3)
  store i32 %25, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %35, %24
  %27 = call i32 @readPosition(i32* %3, i32* %8)
  store i32 %27, i32* %7, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @docListAddDocid(%struct.TYPE_8__* %4, i32 %33)
  store i32 1, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @docListAddPos(%struct.TYPE_8__* %4, i32 %36, i32 %37)
  br label %26

39:                                               ; preds = %26
  br label %20

40:                                               ; preds = %20
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = call i32 @docListDestroy(%struct.TYPE_8__* %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = bitcast %struct.TYPE_8__* %43 to i8*
  %45 = bitcast %struct.TYPE_8__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 8, i1 false)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @readerInit(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @docListInit(%struct.TYPE_8__*, i64, i32*, i32) #1

declare dso_local i32 @atEnd(i32*) #1

declare dso_local i32 @readDocid(i32*) #1

declare dso_local i32 @readPosition(i32*, i32*) #1

declare dso_local i32 @docListAddDocid(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @docListAddPos(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @docListDestroy(%struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
