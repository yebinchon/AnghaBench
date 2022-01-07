; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_dv.c_DiscoverAVC.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_dv.c_DiscoverAVC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"error reading config rom directory for node %d\00", align 1
@ROM1394_NODE_TYPE_AVC = common dso_local global i64 0, align 8
@AVC1394_SUBUNIT_TYPE_VCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64)* @DiscoverAVC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DiscoverAVC(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %9, align 8
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @Raw1394GetNumPorts(i32* %14)
  store i32 %15, i32* %13, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %13, align 4
  br label %25

25:                                               ; preds = %19, %3
  br label %26

26:                                               ; preds = %93, %25
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, -1
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i1 [ false, %26 ], [ %32, %30 ]
  br i1 %34, label %35, label %96

35:                                               ; preds = %33
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32* @Raw1394Open(i32* %36, i32 %37)
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store i32 -1, i32* %4, align 4
  br label %98

42:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %87, %42
  %44 = load i32, i32* %11, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @raw1394_get_nodecount(i32* %45)
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %90

48:                                               ; preds = %43
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i64, i64* %7, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @rom1394_get_guid(i32* %53, i32 %54)
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32*, i32** %6, align 8
  store i32 %59, i32* %60, align 4
  br label %90

61:                                               ; preds = %51
  br label %86

62:                                               ; preds = %48
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i64 @rom1394_get_directory(i32* %63, i32 %64, i32* %8)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @msg_Err(i32* %68, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %87

71:                                               ; preds = %62
  %72 = call i64 @rom1394_get_node_type(i32* %8)
  %73 = load i64, i64* @ROM1394_NODE_TYPE_AVC, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @AVC1394_SUBUNIT_TYPE_VCR, align 4
  %79 = call i64 @avc1394_check_subunit_type(i32* %76, i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32*, i32** %6, align 8
  store i32 %83, i32* %84, align 4
  br label %90

85:                                               ; preds = %75, %71
  br label %86

86:                                               ; preds = %85, %61
  br label %87

87:                                               ; preds = %86, %67
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %43

90:                                               ; preds = %81, %57, %43
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @Raw1394Close(i32* %91)
  br label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %26

96:                                               ; preds = %33
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %41
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @Raw1394GetNumPorts(i32*) #1

declare dso_local i32* @Raw1394Open(i32*, i32) #1

declare dso_local i32 @raw1394_get_nodecount(i32*) #1

declare dso_local i64 @rom1394_get_guid(i32*, i32) #1

declare dso_local i64 @rom1394_get_directory(i32*, i32, i32*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i32) #1

declare dso_local i64 @rom1394_get_node_type(i32*) #1

declare dso_local i64 @avc1394_check_subunit_type(i32*, i32, i32) #1

declare dso_local i32 @Raw1394Close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
