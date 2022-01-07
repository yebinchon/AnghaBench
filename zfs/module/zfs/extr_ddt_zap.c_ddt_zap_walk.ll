; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_ddt_zap.c_ddt_zap_walk.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_ddt_zap.c_ddt_zap_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }

@DDT_KEY_WORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_6__*, i32*)* @ddt_zap_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddt_zap_walk(i32* %0, i32 %1, %struct.TYPE_6__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32, align 4
  %12 = alloca [5 x i32], align 16
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @zap_cursor_init_noprefetch(i32* %9, i32* %18, i32 %19)
  br label %27

21:                                               ; preds = %4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @zap_cursor_init_serialized(i32* %9, i32* %22, i32 %23, i32 %25)
  br label %27

27:                                               ; preds = %21, %17
  %28 = call i32 @zap_cursor_retrieve(i32* %9, %struct.TYPE_5__* %10)
  store i32 %28, i32* %11, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %70

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %13, align 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = load i32, i32* @DDT_KEY_WORDS, align 4
  %44 = load i32, i32* %13, align 4
  %45 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %46 = call i32 @zap_lookup_uint64(i32* %38, i32 %39, i32* %42, i32 %43, i32 1, i32 %44, i32* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %30
  %54 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @ddt_decompress(i32* %54, i32 %57, i32 %58, i32 4)
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %53, %30
  %67 = call i32 @zap_cursor_advance(i32* %9)
  %68 = call i32 @zap_cursor_serialize(i32* %9)
  %69 = load i32*, i32** %8, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %27
  %71 = call i32 @zap_cursor_fini(i32* %9)
  %72 = load i32, i32* %11, align 4
  ret i32 %72
}

declare dso_local i32 @zap_cursor_init_noprefetch(i32*, i32*, i32) #1

declare dso_local i32 @zap_cursor_init_serialized(i32*, i32*, i32, i32) #1

declare dso_local i32 @zap_cursor_retrieve(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zap_lookup_uint64(i32*, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @ddt_decompress(i32*, i32, i32, i32) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_serialize(i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
