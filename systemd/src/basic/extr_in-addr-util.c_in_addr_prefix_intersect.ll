; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_in-addr-util.c_in_addr_prefix_intersect.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_in-addr-util.c_in_addr_prefix_intersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.in_addr_union = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_addr_prefix_intersect(i32 %0, %union.in_addr_union* %1, i32 %2, %union.in_addr_union* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.in_addr_union*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.in_addr_union*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %union.in_addr_union* %1, %union.in_addr_union** %8, align 8
  store i32 %2, i32* %9, align 4
  store %union.in_addr_union* %3, %union.in_addr_union** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %union.in_addr_union*, %union.in_addr_union** %8, align 8
  %19 = call i32 @assert(%union.in_addr_union* %18)
  %20 = load %union.in_addr_union*, %union.in_addr_union** %10, align 8
  %21 = call i32 @assert(%union.in_addr_union* %20)
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @MIN(i32 %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @AF_INET, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %5
  %29 = load %union.in_addr_union*, %union.in_addr_union** %8, align 8
  %30 = bitcast %union.in_addr_union* %29 to %struct.TYPE_3__*
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %union.in_addr_union*, %union.in_addr_union** %10, align 8
  %34 = bitcast %union.in_addr_union* %33 to %struct.TYPE_3__*
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = xor i32 %32, %36
  %38 = call i32 @be32toh(i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %47

42:                                               ; preds = %28
  %43 = load i32, i32* %12, align 4
  %44 = sub i32 32, %43
  %45 = zext i32 %44 to i64
  %46 = shl i64 4294967295, %45
  br label %47

47:                                               ; preds = %42, %41
  %48 = phi i64 [ 0, %41 ], [ %46, %42 ]
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %14, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %6, align 4
  br label %113

55:                                               ; preds = %5
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @AF_INET6, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %110

59:                                               ; preds = %55
  %60 = load i32, i32* %12, align 4
  %61 = icmp ugt i32 %60, 128
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 128, i32* %12, align 4
  br label %63

63:                                               ; preds = %62, %59
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %106, %63
  %65 = load i32, i32* %15, align 4
  %66 = icmp ult i32 %65, 16
  br i1 %66, label %67, label %109

67:                                               ; preds = %64
  %68 = load %union.in_addr_union*, %union.in_addr_union** %8, align 8
  %69 = bitcast %union.in_addr_union* %68 to %struct.TYPE_4__*
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %union.in_addr_union*, %union.in_addr_union** %10, align 8
  %77 = bitcast %union.in_addr_union* %76 to %struct.TYPE_4__*
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %75, %83
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ult i32 %85, 8
  br i1 %86, label %87, label %91

87:                                               ; preds = %67
  %88 = load i32, i32* %12, align 4
  %89 = sub i32 8, %88
  %90 = shl i32 255, %89
  store i32 %90, i32* %17, align 4
  br label %92

91:                                               ; preds = %67
  store i32 255, i32* %17, align 4
  br label %92

92:                                               ; preds = %91, %87
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %17, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 0, i32* %6, align 4
  br label %113

98:                                               ; preds = %92
  %99 = load i32, i32* %12, align 4
  %100 = icmp ugt i32 %99, 8
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %12, align 4
  %103 = sub i32 %102, 8
  store i32 %103, i32* %12, align 4
  br label %105

104:                                              ; preds = %98
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %104, %101
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %15, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %15, align 4
  br label %64

109:                                              ; preds = %64
  store i32 1, i32* %6, align 4
  br label %113

110:                                              ; preds = %55
  %111 = load i32, i32* @EAFNOSUPPORT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %110, %109, %97, %47
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @assert(%union.in_addr_union*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @be32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
