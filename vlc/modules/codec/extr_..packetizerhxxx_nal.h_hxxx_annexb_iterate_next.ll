; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_..packetizerhxxx_nal.h_hxxx_annexb_iterate_next.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_..packetizerhxxx_nal.h_hxxx_annexb_iterate_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64**, i64*)* @hxxx_annexb_iterate_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hxxx_annexb_iterate_next(%struct.TYPE_3__* %0, i64** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64** %1, i64*** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

14:                                               ; preds = %3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = call i8* @startcode_FindAnnexB(i64* %17, i64* %20)
  %22 = bitcast i8* %21 to i64*
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i64* %22, i64** %24, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %83

30:                                               ; preds = %14
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = call i8* @startcode_FindAnnexB(i64* %34, i64* %37)
  %39 = bitcast i8* %38 to i64*
  store i64* %39, i64** %8, align 8
  %40 = load i64*, i64** %8, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %30
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  store i64* %45, i64** %8, align 8
  br label %46

46:                                               ; preds = %42, %30
  br label %47

47:                                               ; preds = %60, %46
  %48 = load i64*, i64** %8, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = icmp ugt i64* %48, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i64*, i64** %8, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 -1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br label %58

58:                                               ; preds = %53, %47
  %59 = phi i1 [ false, %47 ], [ %57, %53 ]
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = load i64*, i64** %8, align 8
  %62 = getelementptr inbounds i64, i64* %61, i32 -1
  store i64* %62, i64** %8, align 8
  br label %47

63:                                               ; preds = %58
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i64**, i64*** %6, align 8
  store i64* %66, i64** %67, align 8
  %68 = load i64*, i64** %8, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = ptrtoint i64* %68 to i64
  %73 = ptrtoint i64* %71 to i64
  %74 = sub i64 %72, %73
  %75 = sdiv exact i64 %74, 8
  %76 = load i64*, i64** %7, align 8
  store i64 %75, i64* %76, align 8
  %77 = load i64*, i64** %8, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i64* %77, i64** %79, align 8
  %80 = load i64**, i64*** %6, align 8
  %81 = load i64*, i64** %7, align 8
  %82 = call i32 @hxxx_strip_AnnexB_startcode(i64** %80, i64* %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %63, %29, %13
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i8* @startcode_FindAnnexB(i64*, i64*) #1

declare dso_local i32 @hxxx_strip_AnnexB_startcode(i64**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
