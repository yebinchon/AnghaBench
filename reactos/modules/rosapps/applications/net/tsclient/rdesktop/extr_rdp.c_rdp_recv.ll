; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_rdp_recv.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_rdp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32* }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@rdp_recv.rdp_s = internal global %struct.TYPE_13__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_14__*, i32*)* @rdp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @rdp_recv(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** @rdp_recv.rdp_s, align 8
  %10 = icmp eq %struct.TYPE_13__* %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** @rdp_recv.rdp_s, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp uge i32* %14, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %11
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %60

24:                                               ; preds = %19, %11, %2
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = call %struct.TYPE_13__* @sec_recv(%struct.TYPE_14__* %25, i32* %8)
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** @rdp_recv.rdp_s, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** @rdp_recv.rdp_s, align 8
  %28 = icmp eq %struct.TYPE_13__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %95

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 255
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** @rdp_recv.rdp_s, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load i32*, i32** %5, align 8
  store i32 0, i32* %39, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** @rdp_recv.rdp_s, align 8
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %3, align 8
  br label %95

41:                                               ; preds = %30
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 3
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** @rdp_recv.rdp_s, align 8
  %47 = call i32 @rdp5_process(%struct.TYPE_14__* %45, %struct.TYPE_13__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %95

50:                                               ; preds = %44
  %51 = load i32*, i32** %5, align 8
  store i32 0, i32* %51, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** @rdp_recv.rdp_s, align 8
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %3, align 8
  br label %95

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** @rdp_recv.rdp_s, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
  br label %66

60:                                               ; preds = %19
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** @rdp_recv.rdp_s, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  store i32* %63, i32** %65, align 8
  br label %66

66:                                               ; preds = %60, %54
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** @rdp_recv.rdp_s, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @in_uint16_le(%struct.TYPE_13__* %67, i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 32768
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 8
  store i32* %76, i32** %74, align 8
  %77 = load i32*, i32** %5, align 8
  store i32 0, i32* %77, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** @rdp_recv.rdp_s, align 8
  store %struct.TYPE_13__* %78, %struct.TYPE_13__** %3, align 8
  br label %95

79:                                               ; preds = %66
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** @rdp_recv.rdp_s, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @in_uint16_le(%struct.TYPE_13__* %80, i32 %81)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** @rdp_recv.rdp_s, align 8
  %84 = call i32 @in_uint8s(%struct.TYPE_13__* %83, i32 2)
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, 15
  %87 = load i32*, i32** %5, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = sext i32 %88 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %90, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** @rdp_recv.rdp_s, align 8
  store %struct.TYPE_13__* %94, %struct.TYPE_13__** %3, align 8
  br label %95

95:                                               ; preds = %79, %72, %50, %49, %33, %29
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %96
}

declare dso_local %struct.TYPE_13__* @sec_recv(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @rdp5_process(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @in_uint16_le(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @in_uint8s(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
