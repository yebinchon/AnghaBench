; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_rdp_parse_bounds.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_rdp_parse_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@False = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @rdp_parse_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdp_parse_bounds(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @in_uint8(i32 %6, i32 %7)
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load i32, i32* @False, align 4
  %17 = call i32 @rdp_in_coord(i32 %13, i32* %15, i32 %16)
  br label %29

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 16
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* @True, align 4
  %27 = call i32 @rdp_in_coord(i32 %23, i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %22, %18
  br label %29

29:                                               ; preds = %28, %12
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 2
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* @False, align 4
  %38 = call i32 @rdp_in_coord(i32 %34, i32* %36, i32 %37)
  br label %50

39:                                               ; preds = %29
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* @True, align 4
  %48 = call i32 @rdp_in_coord(i32 %44, i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %39
  br label %50

50:                                               ; preds = %49, %33
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* @False, align 4
  %59 = call i32 @rdp_in_coord(i32 %55, i32* %57, i32 %58)
  br label %71

60:                                               ; preds = %50
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, 64
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* @True, align 4
  %69 = call i32 @rdp_in_coord(i32 %65, i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %60
  br label %71

71:                                               ; preds = %70, %54
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* @False, align 4
  %80 = call i32 @rdp_in_coord(i32 %76, i32* %78, i32 %79)
  br label %92

81:                                               ; preds = %71
  %82 = load i32, i32* %5, align 4
  %83 = and i32 %82, 128
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i32, i32* %3, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* @True, align 4
  %90 = call i32 @rdp_in_coord(i32 %86, i32* %88, i32 %89)
  br label %91

91:                                               ; preds = %85, %81
  br label %92

92:                                               ; preds = %91, %75
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @s_check(i32 %93)
  ret i32 %94
}

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @rdp_in_coord(i32, i32*, i32) #1

declare dso_local i32 @s_check(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
