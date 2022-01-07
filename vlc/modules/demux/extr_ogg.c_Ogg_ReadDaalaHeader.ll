; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_ReadDaalaHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_ReadDaalaHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @Ogg_ReadDaalaHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Ogg_ReadDaalaHeader(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @oggpack_readinit(i32* %6, i32 %19, i32 %22)
  %24 = call i32 @oggpack_adv(i32* %6, i32 48)
  %25 = call i8* @oggpack_read(i32* %6, i32 8)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = call i8* @oggpack_read(i32* %6, i32 8)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %12, align 4
  %29 = call i8* @oggpack_read(i32* %6, i32 8)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %13, align 4
  %31 = call i32 @oggpack_adv(i32* %6, i32 32)
  %32 = call i32 @oggpack_adv(i32* %6, i32 32)
  %33 = call i32 @oggpack_adv(i32* %6, i32 32)
  %34 = call i32 @oggpack_adv(i32* %6, i32 32)
  %35 = call i8* @oggpack_read(i32* %6, i32 32)
  store i8* %35, i8** %7, align 8
  %36 = call i8* @oggpack_read(i32* %6, i32 32)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i8* @__MAX(i8* %37, i32 1)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i8* %39, i8** %43, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i8* %44, i8** %48, align 8
  %49 = call i32 @oggpack_adv(i32* %6, i32 32)
  %50 = call i8* @oggpack_read(i32* %6, i32 8)
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @__MIN(i32 %52, i32 31)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = shl i32 1, %54
  store i32 %55, i32* %10, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* %10, align 4
  %59 = add i32 %58, -1
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %63, %2
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load i32, i32* %10, align 4
  %69 = lshr i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %60

70:                                               ; preds = %60
  %71 = load i32, i32* %11, align 4
  %72 = mul nsw i32 %71, 1000000
  %73 = load i32, i32* %12, align 4
  %74 = mul nsw i32 %73, 1000
  %75 = add nsw i32 %72, %74
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @VLC_UNUSED(i32 %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %70
  %85 = load i8*, i8** %8, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %84, %70
  store i32 0, i32* %3, align 4
  br label %94

88:                                               ; preds = %84
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i8*, i8** %7, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @date_Init(i32* %90, i8* %91, i8* %92)
  store i32 1, i32* %3, align 4
  br label %94

94:                                               ; preds = %88, %87
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @oggpack_readinit(i32*, i32, i32) #1

declare dso_local i32 @oggpack_adv(i32*, i32) #1

declare dso_local i8* @oggpack_read(i32*, i32) #1

declare dso_local i8* @__MAX(i8*, i32) #1

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local i32 @VLC_UNUSED(i32) #1

declare dso_local i32 @date_Init(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
