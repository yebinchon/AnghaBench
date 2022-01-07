; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_build_ifaceps_section.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_build_ifaceps_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.assembly* }
%struct.assembly = type { i32, %struct.dll_redirect*, i32 }
%struct.dll_redirect = type { i32 }
%struct.guidsection_header = type { i32, i32, i32, i32 }
%struct.guid_index = type { i32 }

@STATUS_NO_MEMORY = common dso_local global i32 0, align 4
@GUIDSECTION_MAGIC = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.guidsection_header**)* @build_ifaceps_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_ifaceps_section(%struct.TYPE_3__* %0, %struct.guidsection_header** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.guidsection_header**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.guidsection_header*, align 8
  %11 = alloca %struct.guid_index*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.assembly*, align 8
  %14 = alloca %struct.dll_redirect*, align 8
  %15 = alloca %struct.assembly*, align 8
  %16 = alloca %struct.dll_redirect*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.guidsection_header** %1, %struct.guidsection_header*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %53, %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %17
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.assembly*, %struct.assembly** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.assembly, %struct.assembly* %26, i64 %28
  store %struct.assembly* %29, %struct.assembly** %13, align 8
  %30 = load %struct.assembly*, %struct.assembly** %13, align 8
  %31 = getelementptr inbounds %struct.assembly, %struct.assembly* %30, i32 0, i32 2
  %32 = call i32 @get_ifaceps_datalen(i32* %31, i32* %9, i32* %8)
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %49, %23
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.assembly*, %struct.assembly** %13, align 8
  %36 = getelementptr inbounds %struct.assembly, %struct.assembly* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load %struct.assembly*, %struct.assembly** %13, align 8
  %41 = getelementptr inbounds %struct.assembly, %struct.assembly* %40, i32 0, i32 1
  %42 = load %struct.dll_redirect*, %struct.dll_redirect** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %42, i64 %44
  store %struct.dll_redirect* %45, %struct.dll_redirect** %14, align 8
  %46 = load %struct.dll_redirect*, %struct.dll_redirect** %14, align 8
  %47 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %46, i32 0, i32 0
  %48 = call i32 @get_ifaceps_datalen(i32* %47, i32* %9, i32* %8)
  br label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %33

52:                                               ; preds = %33
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %17

56:                                               ; preds = %17
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = add i64 %58, 16
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %8, align 4
  %61 = call i32 (...) @RtlGetProcessHeap()
  %62 = load i32, i32* %8, align 4
  %63 = call %struct.guidsection_header* @RtlAllocateHeap(i32 %61, i32 0, i32 %62)
  store %struct.guidsection_header* %63, %struct.guidsection_header** %10, align 8
  %64 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %65 = icmp ne %struct.guidsection_header* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %67, i32* %3, align 4
  br label %147

68:                                               ; preds = %56
  %69 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %70 = call i32 @memset(%struct.guidsection_header* %69, i32 0, i32 16)
  %71 = load i32, i32* @GUIDSECTION_MAGIC, align 4
  %72 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %73 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %75 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %74, i32 0, i32 0
  store i32 16, i32* %75, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %78 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %80 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %79, i32 0, i32 2
  store i32 16, i32* %80, align 4
  %81 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %82 = bitcast %struct.guidsection_header* %81 to i32*
  %83 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %84 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = bitcast i32* %87 to %struct.guid_index*
  store %struct.guid_index* %88, %struct.guid_index** %11, align 8
  %89 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %90 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %9, align 4
  %94 = zext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = add i64 %92, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %12, align 4
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %140, %68
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ult i32 %99, %102
  br i1 %103, label %104, label %143

104:                                              ; preds = %98
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load %struct.assembly*, %struct.assembly** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.assembly, %struct.assembly* %107, i64 %109
  store %struct.assembly* %110, %struct.assembly** %15, align 8
  %111 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %112 = load %struct.assembly*, %struct.assembly** %15, align 8
  %113 = getelementptr inbounds %struct.assembly, %struct.assembly* %112, i32 0, i32 2
  %114 = load i32, i32* %6, align 4
  %115 = add i32 %114, 1
  %116 = call i32 @add_ifaceps_record(%struct.guidsection_header* %111, i32* %113, %struct.guid_index** %11, i32* %12, i32 %115)
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %136, %104
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.assembly*, %struct.assembly** %15, align 8
  %120 = getelementptr inbounds %struct.assembly, %struct.assembly* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ult i32 %118, %121
  br i1 %122, label %123, label %139

123:                                              ; preds = %117
  %124 = load %struct.assembly*, %struct.assembly** %15, align 8
  %125 = getelementptr inbounds %struct.assembly, %struct.assembly* %124, i32 0, i32 1
  %126 = load %struct.dll_redirect*, %struct.dll_redirect** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %126, i64 %128
  store %struct.dll_redirect* %129, %struct.dll_redirect** %16, align 8
  %130 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %131 = load %struct.dll_redirect*, %struct.dll_redirect** %16, align 8
  %132 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %131, i32 0, i32 0
  %133 = load i32, i32* %6, align 4
  %134 = add i32 %133, 1
  %135 = call i32 @add_ifaceps_record(%struct.guidsection_header* %130, i32* %132, %struct.guid_index** %11, i32* %12, i32 %134)
  br label %136

136:                                              ; preds = %123
  %137 = load i32, i32* %7, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %117

139:                                              ; preds = %117
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %6, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %6, align 4
  br label %98

143:                                              ; preds = %98
  %144 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %145 = load %struct.guidsection_header**, %struct.guidsection_header*** %5, align 8
  store %struct.guidsection_header* %144, %struct.guidsection_header** %145, align 8
  %146 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %143, %66
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @get_ifaceps_datalen(i32*, i32*, i32*) #1

declare dso_local %struct.guidsection_header* @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @memset(%struct.guidsection_header*, i32, i32) #1

declare dso_local i32 @add_ifaceps_record(%struct.guidsection_header*, i32*, %struct.guid_index**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
