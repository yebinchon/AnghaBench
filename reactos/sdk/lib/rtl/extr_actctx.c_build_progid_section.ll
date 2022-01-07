; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_build_progid_section.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_build_progid_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.assembly* }
%struct.assembly = type { i32, %struct.dll_redirect*, i32 }
%struct.dll_redirect = type { i32 }
%struct.strsection_header = type { i32, i32, i32, i32, i32, i32 }
%struct.string_index = type { i32 }

@STATUS_NO_MEMORY = common dso_local global i32 0, align 4
@STRSECTION_MAGIC = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.strsection_header**)* @build_progid_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_progid_section(%struct.TYPE_4__* %0, %struct.strsection_header** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.strsection_header**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.strsection_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.string_index*, align 8
  %14 = alloca %struct.assembly*, align 8
  %15 = alloca %struct.dll_redirect*, align 8
  %16 = alloca %struct.assembly*, align 8
  %17 = alloca %struct.dll_redirect*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.strsection_header** %1, %struct.strsection_header*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %54, %2
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %18
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.assembly*, %struct.assembly** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.assembly, %struct.assembly* %27, i64 %29
  store %struct.assembly* %30, %struct.assembly** %14, align 8
  %31 = load %struct.assembly*, %struct.assembly** %14, align 8
  %32 = getelementptr inbounds %struct.assembly, %struct.assembly* %31, i32 0, i32 2
  %33 = call i32 @get_progid_datalen(i32* %32, i32* %9, i32* %8)
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %50, %24
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.assembly*, %struct.assembly** %14, align 8
  %37 = getelementptr inbounds %struct.assembly, %struct.assembly* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load %struct.assembly*, %struct.assembly** %14, align 8
  %42 = getelementptr inbounds %struct.assembly, %struct.assembly* %41, i32 0, i32 1
  %43 = load %struct.dll_redirect*, %struct.dll_redirect** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %43, i64 %45
  store %struct.dll_redirect* %46, %struct.dll_redirect** %15, align 8
  %47 = load %struct.dll_redirect*, %struct.dll_redirect** %15, align 8
  %48 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %47, i32 0, i32 0
  %49 = call i32 @get_progid_datalen(i32* %48, i32* %9, i32* %8)
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %34

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %18

57:                                               ; preds = %18
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = add i64 %59, 24
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %8, align 4
  %62 = call i32 (...) @RtlGetProcessHeap()
  %63 = load i32, i32* %8, align 4
  %64 = call %struct.strsection_header* @RtlAllocateHeap(i32 %62, i32 0, i32 %63)
  store %struct.strsection_header* %64, %struct.strsection_header** %10, align 8
  %65 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %66 = icmp ne %struct.strsection_header* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %57
  %68 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %68, i32* %3, align 4
  br label %171

69:                                               ; preds = %57
  %70 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %71 = call i32 @memset(%struct.strsection_header* %70, i32 0, i32 24)
  %72 = load i32, i32* @STRSECTION_MAGIC, align 4
  %73 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %74 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %76 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %75, i32 0, i32 0
  store i32 24, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %79 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %81 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %84 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %9, align 4
  %86 = zext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = trunc i64 %87 to i32
  %89 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %90 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %92 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %95 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = add i32 %93, %96
  %98 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %99 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  %100 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %101 = bitcast %struct.strsection_header* %100 to i32*
  %102 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %103 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = bitcast i32* %106 to %struct.string_index*
  store %struct.string_index* %107, %struct.string_index** %13, align 8
  %108 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %109 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = zext i32 %110 to i64
  %112 = load i32, i32* %9, align 4
  %113 = zext i32 %112 to i64
  %114 = mul i64 %113, 4
  %115 = add i64 %111, %114
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %11, align 4
  %117 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %118 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %12, align 4
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %164, %69
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ult i32 %121, %124
  br i1 %125, label %126, label %167

126:                                              ; preds = %120
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load %struct.assembly*, %struct.assembly** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.assembly, %struct.assembly* %129, i64 %131
  store %struct.assembly* %132, %struct.assembly** %16, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %134 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %135 = load %struct.assembly*, %struct.assembly** %16, align 8
  %136 = getelementptr inbounds %struct.assembly, %struct.assembly* %135, i32 0, i32 2
  %137 = load i32, i32* %6, align 4
  %138 = add i32 %137, 1
  %139 = call i32 @add_progid_record(%struct.TYPE_4__* %133, %struct.strsection_header* %134, i32* %136, %struct.string_index** %13, i32* %11, i32* %12, i32 %138)
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %160, %126
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.assembly*, %struct.assembly** %16, align 8
  %143 = getelementptr inbounds %struct.assembly, %struct.assembly* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp ult i32 %141, %144
  br i1 %145, label %146, label %163

146:                                              ; preds = %140
  %147 = load %struct.assembly*, %struct.assembly** %16, align 8
  %148 = getelementptr inbounds %struct.assembly, %struct.assembly* %147, i32 0, i32 1
  %149 = load %struct.dll_redirect*, %struct.dll_redirect** %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %149, i64 %151
  store %struct.dll_redirect* %152, %struct.dll_redirect** %17, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %154 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %155 = load %struct.dll_redirect*, %struct.dll_redirect** %17, align 8
  %156 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %155, i32 0, i32 0
  %157 = load i32, i32* %6, align 4
  %158 = add i32 %157, 1
  %159 = call i32 @add_progid_record(%struct.TYPE_4__* %153, %struct.strsection_header* %154, i32* %156, %struct.string_index** %13, i32* %11, i32* %12, i32 %158)
  br label %160

160:                                              ; preds = %146
  %161 = load i32, i32* %7, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %7, align 4
  br label %140

163:                                              ; preds = %140
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %6, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %6, align 4
  br label %120

167:                                              ; preds = %120
  %168 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %169 = load %struct.strsection_header**, %struct.strsection_header*** %5, align 8
  store %struct.strsection_header* %168, %struct.strsection_header** %169, align 8
  %170 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %167, %67
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @get_progid_datalen(i32*, i32*, i32*) #1

declare dso_local %struct.strsection_header* @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @memset(%struct.strsection_header*, i32, i32) #1

declare dso_local i32 @add_progid_record(%struct.TYPE_4__*, %struct.strsection_header*, i32*, %struct.string_index**, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
