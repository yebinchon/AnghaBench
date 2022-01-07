; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_rect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"RECT(x=%d,y=%d,cx=%d,cy=%d,fg=0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_3__*, i32, i32)* @process_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_rect(i32* %0, i32 %1, %struct.TYPE_3__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %9, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @rdp_in_coord(i32 %16, i32* %18, i32 %19)
  br label %21

21:                                               ; preds = %15, %5
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, 2
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @rdp_in_coord(i32 %26, i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %21
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @rdp_in_coord(i32 %36, i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %31
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @rdp_in_coord(i32 %46, i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %41
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 16
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @in_uint8(i32 %56, i32 %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, -256
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %55, %51
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, 32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @in_uint8(i32 %72, i32 %73)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, -65281
  %79 = load i32, i32* %11, align 4
  %80 = shl i32 %79, 8
  %81 = or i32 %78, %80
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %71, %67
  %85 = load i32, i32* %9, align 4
  %86 = and i32 %85, 64
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %84
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @in_uint8(i32 %89, i32 %90)
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, -16711681
  %96 = load i32, i32* %11, align 4
  %97 = shl i32 %96, 16
  %98 = or i32 %95, %97
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %88, %84
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to i8*
  %119 = call i32 @DEBUG(i8* %118)
  %120 = load i32*, i32** %6, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ui_rect(i32* %120, i32 %123, i32 %126, i32 %129, i32 %132, i32 %135)
  ret void
}

declare dso_local i32 @rdp_in_coord(i32, i32*, i32) #1

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @ui_rect(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
