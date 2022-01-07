; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_in-addr-util.c_in_addr_prefix_next.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_in-addr-util.c_in_addr_prefix_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.in_addr_union = type { %struct.in6_addr }
%struct.in6_addr = type { i32* }
%struct.TYPE_2__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_addr_prefix_next(i32 %0, %union.in_addr_union* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.in_addr_union*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.in6_addr, align 8
  %11 = alloca %struct.in6_addr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %union.in_addr_union* %1, %union.in_addr_union** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %union.in_addr_union*, %union.in_addr_union** %6, align 8
  %16 = call i32 @assert(%union.in_addr_union* %15)
  %17 = load i32, i32* %7, align 4
  %18 = icmp ule i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %141

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @AF_INET, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = icmp ugt i32 %25, 32
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 32, i32* %7, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load %union.in_addr_union*, %union.in_addr_union** %6, align 8
  %30 = bitcast %union.in_addr_union* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @be32toh(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = load i32, i32* %7, align 4
  %37 = sub i32 32, %36
  %38 = zext i32 %37 to i64
  %39 = shl i64 1, %38
  %40 = add i64 %35, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %141

46:                                               ; preds = %28
  %47 = load i32, i32* %7, align 4
  %48 = sub i32 32, %47
  %49 = zext i32 %48 to i64
  %50 = shl i64 4294967295, %49
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = and i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @htobe32(i32 %55)
  %57 = load %union.in_addr_union*, %union.in_addr_union** %6, align 8
  %58 = bitcast %union.in_addr_union* %57 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  store i32 1, i32* %4, align 4
  br label %141

60:                                               ; preds = %20
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @AF_INET6, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %138

64:                                               ; preds = %60
  %65 = bitcast %struct.in6_addr* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 8, i1 false)
  store i32 0, i32* %12, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ugt i32 %66, 128
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 128, i32* %7, align 4
  br label %69

69:                                               ; preds = %68, %64
  %70 = load i32, i32* %7, align 4
  %71 = sub i32 %70, 1
  %72 = urem i32 %71, 8
  %73 = sub i32 7, %72
  %74 = shl i32 1, %73
  %75 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %10, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sub i32 %77, 1
  %79 = udiv i32 %78, 8
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  store i32 %74, i32* %81, align 4
  store i32 16, i32* %13, align 4
  br label %82

82:                                               ; preds = %126, %69
  %83 = load i32, i32* %13, align 4
  %84 = icmp ugt i32 %83, 0
  br i1 %84, label %85, label %129

85:                                               ; preds = %82
  %86 = load i32, i32* %13, align 4
  %87 = sub i32 %86, 1
  store i32 %87, i32* %14, align 4
  %88 = load %union.in_addr_union*, %union.in_addr_union** %6, align 8
  %89 = bitcast %union.in_addr_union* %88 to %struct.in6_addr*
  %90 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %10, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %95, %101
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %102, %103
  %105 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %11, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %104, i32* %109, align 4
  %110 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %11, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %14, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load %union.in_addr_union*, %union.in_addr_union** %6, align 8
  %117 = bitcast %union.in_addr_union* %116 to %struct.in6_addr*
  %118 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %115, %123
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %12, align 4
  br label %126

126:                                              ; preds = %85
  %127 = load i32, i32* %13, align 4
  %128 = add i32 %127, -1
  store i32 %128, i32* %13, align 4
  br label %82

129:                                              ; preds = %82
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 0, i32* %4, align 4
  br label %141

133:                                              ; preds = %129
  %134 = load %union.in_addr_union*, %union.in_addr_union** %6, align 8
  %135 = bitcast %union.in_addr_union* %134 to %struct.in6_addr*
  %136 = bitcast %struct.in6_addr* %135 to i8*
  %137 = bitcast %struct.in6_addr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %136, i8* align 8 %137, i64 8, i1 false)
  store i32 1, i32* %4, align 4
  br label %141

138:                                              ; preds = %60
  %139 = load i32, i32* @EAFNOSUPPORT, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %138, %133, %132, %46, %45, %19
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @assert(%union.in_addr_union*) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @htobe32(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
