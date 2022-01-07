; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-font.c_ft_cid_to_gid.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-font.c_ft_cid_to_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i64, %struct.TYPE_6__*, i64, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @ft_cid_to_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ft_cid_to_gid(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %85

10:                                               ; preds = %2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @pdf_lookup_cmap(i64 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %77

23:                                               ; preds = %10
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %77

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %76 [
    i32 33, label %30
    i32 40, label %31
    i32 41, label %32
    i32 44, label %33
    i32 58, label %34
    i32 59, label %35
    i32 63, label %36
    i32 91, label %37
    i32 93, label %38
    i32 95, label %39
    i32 123, label %40
    i32 125, label %41
    i32 8211, label %42
    i32 8212, label %43
    i32 8229, label %44
    i32 8230, label %45
    i32 12289, label %46
    i32 12290, label %47
    i32 12296, label %48
    i32 12297, label %49
    i32 12298, label %50
    i32 12299, label %51
    i32 12300, label %52
    i32 12301, label %53
    i32 12302, label %54
    i32 12303, label %55
    i32 12304, label %56
    i32 12305, label %57
    i32 12308, label %58
    i32 12309, label %59
    i32 12310, label %60
    i32 12311, label %61
    i32 65281, label %62
    i32 65288, label %63
    i32 65289, label %64
    i32 65292, label %65
    i32 65306, label %66
    i32 65307, label %67
    i32 65311, label %68
    i32 65339, label %69
    i32 65341, label %70
    i32 65343, label %71
    i32 65371, label %72
    i32 65373, label %73
    i32 12540, label %74
    i32 65293, label %75
  ]

30:                                               ; preds = %28
  store i32 65045, i32* %5, align 4
  br label %76

31:                                               ; preds = %28
  store i32 65077, i32* %5, align 4
  br label %76

32:                                               ; preds = %28
  store i32 65078, i32* %5, align 4
  br label %76

33:                                               ; preds = %28
  store i32 65040, i32* %5, align 4
  br label %76

34:                                               ; preds = %28
  store i32 65043, i32* %5, align 4
  br label %76

35:                                               ; preds = %28
  store i32 65044, i32* %5, align 4
  br label %76

36:                                               ; preds = %28
  store i32 65046, i32* %5, align 4
  br label %76

37:                                               ; preds = %28
  store i32 65095, i32* %5, align 4
  br label %76

38:                                               ; preds = %28
  store i32 65096, i32* %5, align 4
  br label %76

39:                                               ; preds = %28
  store i32 65075, i32* %5, align 4
  br label %76

40:                                               ; preds = %28
  store i32 65079, i32* %5, align 4
  br label %76

41:                                               ; preds = %28
  store i32 65080, i32* %5, align 4
  br label %76

42:                                               ; preds = %28
  store i32 65074, i32* %5, align 4
  br label %76

43:                                               ; preds = %28
  store i32 65073, i32* %5, align 4
  br label %76

44:                                               ; preds = %28
  store i32 65072, i32* %5, align 4
  br label %76

45:                                               ; preds = %28
  store i32 65049, i32* %5, align 4
  br label %76

46:                                               ; preds = %28
  store i32 65041, i32* %5, align 4
  br label %76

47:                                               ; preds = %28
  store i32 65042, i32* %5, align 4
  br label %76

48:                                               ; preds = %28
  store i32 65087, i32* %5, align 4
  br label %76

49:                                               ; preds = %28
  store i32 65088, i32* %5, align 4
  br label %76

50:                                               ; preds = %28
  store i32 65085, i32* %5, align 4
  br label %76

51:                                               ; preds = %28
  store i32 65086, i32* %5, align 4
  br label %76

52:                                               ; preds = %28
  store i32 65089, i32* %5, align 4
  br label %76

53:                                               ; preds = %28
  store i32 65090, i32* %5, align 4
  br label %76

54:                                               ; preds = %28
  store i32 65091, i32* %5, align 4
  br label %76

55:                                               ; preds = %28
  store i32 65092, i32* %5, align 4
  br label %76

56:                                               ; preds = %28
  store i32 65083, i32* %5, align 4
  br label %76

57:                                               ; preds = %28
  store i32 65084, i32* %5, align 4
  br label %76

58:                                               ; preds = %28
  store i32 65081, i32* %5, align 4
  br label %76

59:                                               ; preds = %28
  store i32 65082, i32* %5, align 4
  br label %76

60:                                               ; preds = %28
  store i32 65047, i32* %5, align 4
  br label %76

61:                                               ; preds = %28
  store i32 65048, i32* %5, align 4
  br label %76

62:                                               ; preds = %28
  store i32 65045, i32* %5, align 4
  br label %76

63:                                               ; preds = %28
  store i32 65077, i32* %5, align 4
  br label %76

64:                                               ; preds = %28
  store i32 65078, i32* %5, align 4
  br label %76

65:                                               ; preds = %28
  store i32 65040, i32* %5, align 4
  br label %76

66:                                               ; preds = %28
  store i32 65043, i32* %5, align 4
  br label %76

67:                                               ; preds = %28
  store i32 65044, i32* %5, align 4
  br label %76

68:                                               ; preds = %28
  store i32 65046, i32* %5, align 4
  br label %76

69:                                               ; preds = %28
  store i32 65095, i32* %5, align 4
  br label %76

70:                                               ; preds = %28
  store i32 65096, i32* %5, align 4
  br label %76

71:                                               ; preds = %28
  store i32 65075, i32* %5, align 4
  br label %76

72:                                               ; preds = %28
  store i32 65079, i32* %5, align 4
  br label %76

73:                                               ; preds = %28
  store i32 65080, i32* %5, align 4
  br label %76

74:                                               ; preds = %28
  store i32 65073, i32* %5, align 4
  br label %76

75:                                               ; preds = %28
  store i32 65073, i32* %5, align 4
  br label %76

76:                                               ; preds = %28, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30
  br label %77

77:                                               ; preds = %76, %23, %10
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @ft_char_index(i32 %82, i32 %83)
  store i32 %84, i32* %3, align 4
  br label %110

85:                                               ; preds = %2
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %108

90:                                               ; preds = %85
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ult i64 %92, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %90
  %98 = load i32, i32* %5, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %3, align 4
  br label %110

108:                                              ; preds = %97, %90, %85
  %109 = load i32, i32* %5, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %100, %77
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @pdf_lookup_cmap(i64, i32) #1

declare dso_local i32 @ft_char_index(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
