; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_pool_idx.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_pool_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server_pool = type { i32, i32, i32, i32, %struct.string }
%struct.string = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_pool_idx(%struct.server_pool* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.server_pool*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.string*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.server_pool* %0, %struct.server_pool** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %14 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %13, i32 0, i32 1
  %15 = call i32 @array_n(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %24 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %23, i32 0, i32 4
  %25 = call i32 @string_empty(%struct.string* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %78, label %27

27:                                               ; preds = %3
  %28 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %29 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %28, i32 0, i32 4
  store %struct.string* %29, %struct.string** %10, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load %struct.string*, %struct.string** %10, align 8
  %36 = getelementptr inbounds %struct.string, %struct.string* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @nc_strchr(i32* %30, i32* %34, i32 %39)
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %77

43:                                               ; preds = %27
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load %struct.string*, %struct.string** %10, align 8
  %51 = getelementptr inbounds %struct.string, %struct.string* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @nc_strchr(i32* %45, i32* %49, i32 %54)
  store i32* %55, i32** %12, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %76

58:                                               ; preds = %43
  %59 = load i32*, i32** %12, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = ptrtoint i32* %59 to i64
  %62 = ptrtoint i32* %60 to i64
  %63 = sub i64 %61, %62
  %64 = sdiv exact i64 %63, 4
  %65 = icmp sgt i64 %64, 1
  br i1 %65, label %66, label %76

66:                                               ; preds = %58
  %67 = load i32*, i32** %11, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32* %68, i32** %6, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = ptrtoint i32* %69 to i64
  %72 = ptrtoint i32* %70 to i64
  %73 = sub i64 %71, %72
  %74 = sdiv exact i64 %73, 4
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %66, %58, %43
  br label %77

77:                                               ; preds = %76, %27
  br label %78

78:                                               ; preds = %77, %3
  %79 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %80 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %116 [
    i32 130, label %82
    i32 129, label %95
    i32 128, label %108
  ]

82:                                               ; preds = %78
  %83 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @server_pool_hash(%struct.server_pool* %83, i32* %84, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %88 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %91 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @ketama_dispatch(i32 %89, i32 %92, i32 %93)
  store i32 %94, i32* %9, align 4
  br label %118

95:                                               ; preds = %78
  %96 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @server_pool_hash(%struct.server_pool* %96, i32* %97, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %101 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %104 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @modula_dispatch(i32 %102, i32 %105, i32 %106)
  store i32 %107, i32* %9, align 4
  br label %118

108:                                              ; preds = %78
  %109 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %110 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %113 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @random_dispatch(i32 %111, i32 %114, i32 0)
  store i32 %115, i32* %9, align 4
  br label %118

116:                                              ; preds = %78
  %117 = call i32 (...) @NOT_REACHED()
  store i32 0, i32* %4, align 4
  br label %127

118:                                              ; preds = %108, %95, %82
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %121 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %120, i32 0, i32 1
  %122 = call i32 @array_n(i32* %121)
  %123 = icmp slt i32 %119, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @ASSERT(i32 %124)
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %118, %116
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @array_n(i32*) #1

declare dso_local i32 @string_empty(%struct.string*) #1

declare dso_local i32* @nc_strchr(i32*, i32*, i32) #1

declare dso_local i32 @server_pool_hash(%struct.server_pool*, i32*, i32) #1

declare dso_local i32 @ketama_dispatch(i32, i32, i32) #1

declare dso_local i32 @modula_dispatch(i32, i32, i32) #1

declare dso_local i32 @random_dispatch(i32, i32, i32) #1

declare dso_local i32 @NOT_REACHED(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
