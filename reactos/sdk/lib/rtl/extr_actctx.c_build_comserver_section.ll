; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_build_comserver_section.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_build_comserver_section.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.guidsection_header**)* @build_comserver_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_comserver_section(%struct.TYPE_3__* %0, %struct.guidsection_header** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.guidsection_header**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.guidsection_header*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.guid_index*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.assembly*, align 8
  %17 = alloca %struct.dll_redirect*, align 8
  %18 = alloca %struct.assembly*, align 8
  %19 = alloca %struct.dll_redirect*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.guidsection_header** %1, %struct.guidsection_header*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %57, %2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %20
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load %struct.assembly*, %struct.assembly** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.assembly, %struct.assembly* %29, i64 %31
  store %struct.assembly* %32, %struct.assembly** %16, align 8
  %33 = load %struct.assembly*, %struct.assembly** %16, align 8
  %34 = getelementptr inbounds %struct.assembly, %struct.assembly* %33, i32 0, i32 2
  %35 = call i32 @get_comserver_datalen(i32* %34, %struct.dll_redirect* null, i32* %9, i32* %8, i32* %10)
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %53, %26
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.assembly*, %struct.assembly** %16, align 8
  %39 = getelementptr inbounds %struct.assembly, %struct.assembly* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load %struct.assembly*, %struct.assembly** %16, align 8
  %44 = getelementptr inbounds %struct.assembly, %struct.assembly* %43, i32 0, i32 1
  %45 = load %struct.dll_redirect*, %struct.dll_redirect** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %45, i64 %47
  store %struct.dll_redirect* %48, %struct.dll_redirect** %17, align 8
  %49 = load %struct.dll_redirect*, %struct.dll_redirect** %17, align 8
  %50 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %49, i32 0, i32 0
  %51 = load %struct.dll_redirect*, %struct.dll_redirect** %17, align 8
  %52 = call i32 @get_comserver_datalen(i32* %50, %struct.dll_redirect* %51, i32* %9, i32* %8, i32* %10)
  br label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %7, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %36

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %20

60:                                               ; preds = %20
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @aligned_string_len(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = add i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = add i64 %66, 16
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %8, align 4
  %69 = call i32 (...) @RtlGetProcessHeap()
  %70 = load i32, i32* %8, align 4
  %71 = call %struct.guidsection_header* @RtlAllocateHeap(i32 %69, i32 0, i32 %70)
  store %struct.guidsection_header* %71, %struct.guidsection_header** %11, align 8
  %72 = load %struct.guidsection_header*, %struct.guidsection_header** %11, align 8
  %73 = icmp ne %struct.guidsection_header* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %60
  %75 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %75, i32* %3, align 4
  br label %164

76:                                               ; preds = %60
  %77 = load %struct.guidsection_header*, %struct.guidsection_header** %11, align 8
  %78 = call i32 @memset(%struct.guidsection_header* %77, i32 0, i32 16)
  %79 = load i32, i32* @GUIDSECTION_MAGIC, align 4
  %80 = load %struct.guidsection_header*, %struct.guidsection_header** %11, align 8
  %81 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.guidsection_header*, %struct.guidsection_header** %11, align 8
  %83 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %82, i32 0, i32 0
  store i32 16, i32* %83, align 4
  %84 = load i32, i32* %9, align 4
  %85 = mul i32 2, %84
  %86 = load %struct.guidsection_header*, %struct.guidsection_header** %11, align 8
  %87 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @aligned_string_len(i32 %88)
  %90 = sext i32 %89 to i64
  %91 = add i64 16, %90
  %92 = trunc i64 %91 to i32
  %93 = load %struct.guidsection_header*, %struct.guidsection_header** %11, align 8
  %94 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.guidsection_header*, %struct.guidsection_header** %11, align 8
  %96 = bitcast %struct.guidsection_header* %95 to i32*
  %97 = load %struct.guidsection_header*, %struct.guidsection_header** %11, align 8
  %98 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = bitcast i32* %101 to %struct.guid_index*
  store %struct.guid_index* %102, %struct.guid_index** %14, align 8
  store i32 16, i32* %12, align 4
  %103 = load %struct.guidsection_header*, %struct.guidsection_header** %11, align 8
  %104 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = load i32, i32* %9, align 4
  %108 = mul i32 2, %107
  %109 = zext i32 %108 to i64
  %110 = mul i64 %109, 4
  %111 = add i64 %106, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %13, align 4
  %113 = call i32 (...) @NtGetTickCount()
  store i32 %113, i32* %15, align 4
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %157, %76
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ult i32 %115, %118
  br i1 %119, label %120, label %160

120:                                              ; preds = %114
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load %struct.assembly*, %struct.assembly** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.assembly, %struct.assembly* %123, i64 %125
  store %struct.assembly* %126, %struct.assembly** %18, align 8
  %127 = load %struct.guidsection_header*, %struct.guidsection_header** %11, align 8
  %128 = load %struct.assembly*, %struct.assembly** %18, align 8
  %129 = getelementptr inbounds %struct.assembly, %struct.assembly* %128, i32 0, i32 2
  %130 = load i32, i32* %6, align 4
  %131 = add i32 %130, 1
  %132 = call i32 @add_comserver_record(%struct.guidsection_header* %127, i32* %129, %struct.dll_redirect* null, %struct.guid_index** %14, i32* %13, i32* %12, i32* %15, i32 %131)
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %153, %120
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.assembly*, %struct.assembly** %18, align 8
  %136 = getelementptr inbounds %struct.assembly, %struct.assembly* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ult i32 %134, %137
  br i1 %138, label %139, label %156

139:                                              ; preds = %133
  %140 = load %struct.assembly*, %struct.assembly** %18, align 8
  %141 = getelementptr inbounds %struct.assembly, %struct.assembly* %140, i32 0, i32 1
  %142 = load %struct.dll_redirect*, %struct.dll_redirect** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %142, i64 %144
  store %struct.dll_redirect* %145, %struct.dll_redirect** %19, align 8
  %146 = load %struct.guidsection_header*, %struct.guidsection_header** %11, align 8
  %147 = load %struct.dll_redirect*, %struct.dll_redirect** %19, align 8
  %148 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %147, i32 0, i32 0
  %149 = load %struct.dll_redirect*, %struct.dll_redirect** %19, align 8
  %150 = load i32, i32* %6, align 4
  %151 = add i32 %150, 1
  %152 = call i32 @add_comserver_record(%struct.guidsection_header* %146, i32* %148, %struct.dll_redirect* %149, %struct.guid_index** %14, i32* %13, i32* %12, i32* %15, i32 %151)
  br label %153

153:                                              ; preds = %139
  %154 = load i32, i32* %7, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %133

156:                                              ; preds = %133
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %6, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %6, align 4
  br label %114

160:                                              ; preds = %114
  %161 = load %struct.guidsection_header*, %struct.guidsection_header** %11, align 8
  %162 = load %struct.guidsection_header**, %struct.guidsection_header*** %5, align 8
  store %struct.guidsection_header* %161, %struct.guidsection_header** %162, align 8
  %163 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %160, %74
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @get_comserver_datalen(i32*, %struct.dll_redirect*, i32*, i32*, i32*) #1

declare dso_local i32 @aligned_string_len(i32) #1

declare dso_local %struct.guidsection_header* @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @memset(%struct.guidsection_header*, i32, i32) #1

declare dso_local i32 @NtGetTickCount(...) #1

declare dso_local i32 @add_comserver_record(%struct.guidsection_header*, i32*, %struct.dll_redirect*, %struct.guid_index**, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
