; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_docListRestrictColumn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_docListRestrictColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@DL_POSITIONS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32)* @docListRestrictColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @docListRestrictColumn(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DL_POSITIONS, align 8
  %14 = icmp sge i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = call i32 @readerInit(i32* %5, %struct.TYPE_8__* %17)
  %19 = load i64, i64* @DL_POSITIONS, align 8
  %20 = call i32 @docListInit(%struct.TYPE_8__* %6, i64 %19, i32* null, i32 0)
  br label %21

21:                                               ; preds = %41, %2
  %22 = call i32 @atEnd(i32* %5)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = call i32 @readDocid(i32* %5)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @docListAddDocid(%struct.TYPE_8__* %6, i32 %27)
  br label %29

29:                                               ; preds = %40, %25
  %30 = call i32 @readPosition(i32* %5, i32* %9)
  store i32 %30, i32* %8, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @docListAddPos(%struct.TYPE_8__* %6, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %32
  br label %29

41:                                               ; preds = %29
  br label %21

42:                                               ; preds = %21
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = call i32 @docListDestroy(%struct.TYPE_8__* %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = bitcast %struct.TYPE_8__* %45 to i8*
  %47 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 8, i1 false)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @readerInit(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @docListInit(%struct.TYPE_8__*, i64, i32*, i32) #1

declare dso_local i32 @atEnd(i32*) #1

declare dso_local i32 @readDocid(i32*) #1

declare dso_local i32 @docListAddDocid(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @readPosition(i32*, i32*) #1

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
