; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_screenblt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_screenblt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"SCREENBLT(op=0x%x,x=%d,y=%d,cx=%d,cy=%d,srcx=%d,srcy=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_3__*, i32, i32)* @process_screenblt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_screenblt(i32* %0, i32 %1, %struct.TYPE_3__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 5
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @rdp_in_coord(i32 %15, i32* %17, i32 %18)
  br label %20

20:                                               ; preds = %14, %5
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 2
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @rdp_in_coord(i32 %25, i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %20
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @rdp_in_coord(i32 %35, i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %30
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @rdp_in_coord(i32 %45, i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %44, %40
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, 16
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @in_uint8(i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %50
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, 32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @rdp_in_coord(i32 %65, i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %60
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, 64
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @rdp_in_coord(i32 %75, i32* %77, i32 %78)
  br label %80

80:                                               ; preds = %74, %70
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  %104 = call i32 @DEBUG(i8* %103)
  %105 = load i32*, i32** %6, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ui_screenblt(i32* %105, i32 %108, i32 %111, i32 %114, i32 %117, i32 %120, i32 %123, i32 %126)
  ret void
}

declare dso_local i32 @rdp_in_coord(i32, i32*, i32) #1

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @ui_screenblt(i32*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
