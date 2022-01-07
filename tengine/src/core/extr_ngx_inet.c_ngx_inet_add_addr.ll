; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_inet.c_ngx_inet_add_addr.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_inet.c_ngx_inet_add_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i32, %struct.sockaddr* }
%struct.TYPE_6__ = type { i64, i32* }
%struct.sockaddr = type { i32 }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, %struct.sockaddr*, i32, i32)* @ngx_inet_add_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_inet_add_addr(i32* %0, %struct.TYPE_7__* %1, %struct.sockaddr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.sockaddr*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %5
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  %30 = add nsw i32 %29, 1
  br label %32

31:                                               ; preds = %5
  br label %32

32:                                               ; preds = %31, %22
  %33 = phi i32 [ %30, %22 ], [ 1, %31 ]
  store i32 %33, i32* %15, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = icmp eq %struct.TYPE_8__* %36, null
  br i1 %37, label %38, label %56

38:                                               ; preds = %32
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %15, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 32
  %45 = trunc i64 %44 to i32
  %46 = call %struct.TYPE_8__* @ngx_palloc(i32* %39, i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %48, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = icmp eq %struct.TYPE_8__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i32, i32* @NGX_ERROR, align 4
  store i32 %54, i32* %6, align 4
  br label %131

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55, %32
  store i32 0, i32* %14, align 4
  br label %57

57:                                               ; preds = %126, %56
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %129

61:                                               ; preds = %57
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call %struct.sockaddr* @ngx_pcalloc(i32* %62, i32 %63)
  store %struct.sockaddr* %64, %struct.sockaddr** %17, align 8
  %65 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %66 = icmp eq %struct.sockaddr* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @NGX_ERROR, align 4
  store i32 %68, i32* %6, align 4
  br label %131

69:                                               ; preds = %61
  %70 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %71 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @ngx_memcpy(%struct.sockaddr* %70, %struct.sockaddr* %71, i32 %72)
  %74 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %77, %78
  %80 = call i32 @ngx_inet_set_port(%struct.sockaddr* %74, i32 %79)
  %81 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %82 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %84 [
  ]

84:                                               ; preds = %69
  %85 = load i32, i32* @NGX_INET_ADDRSTRLEN, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 %86, 7
  %88 = sub i64 %87, 1
  store i64 %88, i64* %13, align 8
  br label %89

89:                                               ; preds = %84
  %90 = load i32*, i32** %7, align 8
  %91 = load i64, i64* %13, align 8
  %92 = call i32* @ngx_pnalloc(i32* %90, i64 %91)
  store i32* %92, i32** %12, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* @NGX_ERROR, align 4
  store i32 %96, i32* %6, align 4
  br label %131

97:                                               ; preds = %89
  %98 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32*, i32** %12, align 8
  %101 = load i64, i64* %13, align 8
  %102 = call i64 @ngx_sock_ntop(%struct.sockaddr* %98, i32 %99, i32* %100, i64 %101, i32 1)
  store i64 %102, i64* %13, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i64 %110
  store %struct.TYPE_8__* %111, %struct.TYPE_8__** %16, align 8
  %112 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  store %struct.sockaddr* %112, %struct.sockaddr** %114, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  %118 = load i64, i64* %13, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store i64 %118, i64* %121, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  store i32* %122, i32** %125, align 8
  br label %126

126:                                              ; preds = %97
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %57

129:                                              ; preds = %57
  %130 = load i32, i32* @NGX_OK, align 4
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %129, %95, %67, %53
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local %struct.TYPE_8__* @ngx_palloc(i32*, i32) #1

declare dso_local %struct.sockaddr* @ngx_pcalloc(i32*, i32) #1

declare dso_local i32 @ngx_memcpy(%struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @ngx_inet_set_port(%struct.sockaddr*, i32) #1

declare dso_local i32* @ngx_pnalloc(i32*, i64) #1

declare dso_local i64 @ngx_sock_ntop(%struct.sockaddr*, i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
