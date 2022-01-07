; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_LAN_discovery.c_LAN_ip.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_LAN_discovery.c_LAN_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i32*, i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LAN_ip(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = call i64 @Local_ip(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %0)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %160

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AF_INET, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %95

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  %15 = bitcast %struct.TYPE_6__* %3 to i8*
  %16 = bitcast %struct.TYPE_6__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false)
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %160

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 172
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %33, 16
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %39, 31
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %160

42:                                               ; preds = %35, %29, %23
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 192
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 168
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %160

55:                                               ; preds = %48, %42
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 169
  br i1 %60, label %61, label %80

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 254
  br i1 %66, label %67, label %80

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 255
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %160

80:                                               ; preds = %73, %67, %61, %55
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 100
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 192
  %92 = icmp eq i32 %91, 64
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %160

94:                                               ; preds = %86, %80
  br label %159

95:                                               ; preds = %8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @AF_INET6, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %158

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 255
  br i1 %106, label %107, label %121

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %112, 3
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 15
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %136, label %121

121:                                              ; preds = %114, %107, %100
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 254
  br i1 %127, label %128, label %137

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 192
  %135 = icmp eq i32 %134, 128
  br i1 %135, label %136, label %137

136:                                              ; preds = %128, %114
  store i32 0, i32* %2, align 4
  br label %160

137:                                              ; preds = %128, %121
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %139 = bitcast %struct.TYPE_8__* %138 to { i32*, i32* }*
  %140 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %139, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = call i64 @IPV6_IPV4_IN_V6(i32* %141, i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %137
  %147 = load i64, i64* @AF_INET, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i64 %147, i64* %148, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 8
  %156 = call i32 @LAN_ip(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %4)
  store i32 %156, i32* %2, align 4
  br label %160

157:                                              ; preds = %137
  br label %158

158:                                              ; preds = %157, %95
  br label %159

159:                                              ; preds = %158, %94
  store i32 -1, i32* %2, align 4
  br label %160

160:                                              ; preds = %159, %146, %136, %93, %79, %54, %41, %22, %7
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i64 @Local_ip(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @IPV6_IPV4_IN_V6(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
