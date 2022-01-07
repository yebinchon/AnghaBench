; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_manifest.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_manifest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.actctx_loader = type { i32 }
%struct.assembly_identity = type { i32 }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.assembly = type { %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [45 x i8] c"parsing manifest loaded from %S base dir %S\0A\00", align 1
@ASSEMBLY_SHARED_MANIFEST = common dso_local global i32 0, align 4
@ASSEMBLY_MANIFEST = common dso_local global i32 0, align 4
@STATUS_SXS_CANT_GEN_ACTCTX = common dso_local global i32 0, align 4
@STATUS_NO_MEMORY = common dso_local global i32 0, align 4
@ACTIVATION_CONTEXT_PATH_TYPE_WIN32_FILE = common dso_local global i32 0, align 4
@ACTIVATION_CONTEXT_PATH_TYPE_NONE = common dso_local global i32 0, align 4
@IS_TEXT_UNICODE_SIGNATURE = common dso_local global i32 0, align 4
@IS_TEXT_UNICODE_REVERSE_SIGNATURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"RtlMultiByteToUnicodeSize failed with %lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"RtlMultiByteToUnicodeN failed with %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.actctx_loader*, %struct.assembly_identity*, i64, i64, i64, i8*, i32)* @parse_manifest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_manifest(%struct.actctx_loader* %0, %struct.assembly_identity* %1, i64 %2, i64 %3, i64 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.actctx_loader*, align 8
  %10 = alloca %struct.assembly_identity*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_5__, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.assembly*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store %struct.actctx_loader* %0, %struct.actctx_loader** %9, align 8
  store %struct.assembly_identity* %1, %struct.assembly_identity** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %12, align 8
  %27 = call i32 @DPRINT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %26)
  %28 = load %struct.actctx_loader*, %struct.actctx_loader** %9, align 8
  %29 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %13, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %7
  %34 = load i32, i32* @ASSEMBLY_SHARED_MANIFEST, align 4
  br label %37

35:                                               ; preds = %7
  %36 = load i32, i32* @ASSEMBLY_MANIFEST, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = call %struct.assembly* @add_assembly(i32 %30, i32 %38)
  store %struct.assembly* %39, %struct.assembly** %18, align 8
  %40 = icmp ne %struct.assembly* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @STATUS_SXS_CANT_GEN_ACTCTX, align 4
  store i32 %42, i32* %8, align 4
  br label %206

43:                                               ; preds = %37
  %44 = load i64, i64* %12, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i64, i64* %12, align 8
  %48 = call i8* @strdupW(i64 %47)
  %49 = load %struct.assembly*, %struct.assembly** %18, align 8
  %50 = getelementptr inbounds %struct.assembly, %struct.assembly* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = icmp ne i8* %48, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %53, i32* %8, align 4
  br label %206

54:                                               ; preds = %46, %43
  %55 = load i64, i64* %11, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i64, i64* %11, align 8
  %59 = add nsw i64 %58, 4
  %60 = call i8* @strdupW(i64 %59)
  %61 = load %struct.assembly*, %struct.assembly** %18, align 8
  %62 = getelementptr inbounds %struct.assembly, %struct.assembly* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i8* %60, i8** %63, align 8
  br label %64

64:                                               ; preds = %57, %54
  %65 = load %struct.assembly*, %struct.assembly** %18, align 8
  %66 = getelementptr inbounds %struct.assembly, %struct.assembly* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @ACTIVATION_CONTEXT_PATH_TYPE_WIN32_FILE, align 4
  br label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @ACTIVATION_CONTEXT_PATH_TYPE_NONE, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = load %struct.assembly*, %struct.assembly** %18, align 8
  %77 = getelementptr inbounds %struct.assembly, %struct.assembly* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 8
  %79 = load i32, i32* @IS_TEXT_UNICODE_SIGNATURE, align 4
  %80 = load i32, i32* @IS_TEXT_UNICODE_REVERSE_SIGNATURE, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %19, align 4
  %82 = load i8*, i8** %14, align 8
  %83 = load i32, i32* %15, align 4
  %84 = call i64 @RtlIsTextUnicode(i8* %82, i32 %83, i32* %19)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %74
  %87 = load i8*, i8** %14, align 8
  %88 = bitcast i8* %87 to i32*
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32* %88, i32** %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = udiv i64 %93, 4
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32* %95, i32** %96, align 8
  %97 = load %struct.actctx_loader*, %struct.actctx_loader** %9, align 8
  %98 = load %struct.assembly*, %struct.assembly** %18, align 8
  %99 = load %struct.assembly_identity*, %struct.assembly_identity** %10, align 8
  %100 = call i32 @parse_manifest_buffer(%struct.actctx_loader* %97, %struct.assembly* %98, %struct.assembly_identity* %99, %struct.TYPE_5__* %16)
  store i32 %100, i32* %17, align 4
  br label %204

101:                                              ; preds = %74
  %102 = load i32, i32* %19, align 4
  %103 = load i32, i32* @IS_TEXT_UNICODE_REVERSE_SIGNATURE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %154

106:                                              ; preds = %101
  %107 = load i8*, i8** %14, align 8
  %108 = bitcast i8* %107 to i32*
  store i32* %108, i32** %20, align 8
  %109 = call i32 (...) @RtlGetProcessHeap()
  %110 = load i32, i32* %15, align 4
  %111 = call i32* @RtlAllocateHeap(i32 %109, i32 0, i32 %110)
  store i32* %111, i32** %21, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %114, i32* %8, align 4
  br label %206

115:                                              ; preds = %106
  store i32 0, i32* %22, align 4
  br label %116

116:                                              ; preds = %134, %115
  %117 = load i32, i32* %22, align 4
  %118 = zext i32 %117 to i64
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = udiv i64 %120, 4
  %122 = icmp ult i64 %118, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %116
  %124 = load i32*, i32** %20, align 8
  %125 = load i32, i32* %22, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @RtlUshortByteSwap(i32 %128)
  %130 = load i32*, i32** %21, align 8
  %131 = load i32, i32* %22, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %129, i32* %133, align 4
  br label %134

134:                                              ; preds = %123
  %135 = load i32, i32* %22, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %22, align 4
  br label %116

137:                                              ; preds = %116
  %138 = load i32*, i32** %21, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32* %138, i32** %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = udiv i64 %143, 4
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32* %145, i32** %146, align 8
  %147 = load %struct.actctx_loader*, %struct.actctx_loader** %9, align 8
  %148 = load %struct.assembly*, %struct.assembly** %18, align 8
  %149 = load %struct.assembly_identity*, %struct.assembly_identity** %10, align 8
  %150 = call i32 @parse_manifest_buffer(%struct.actctx_loader* %147, %struct.assembly* %148, %struct.assembly_identity* %149, %struct.TYPE_5__* %16)
  store i32 %150, i32* %17, align 4
  %151 = call i32 (...) @RtlGetProcessHeap()
  %152 = load i32*, i32** %21, align 8
  %153 = call i32 @RtlFreeHeap(i32 %151, i32 0, i32* %152)
  br label %203

154:                                              ; preds = %101
  %155 = load i8*, i8** %14, align 8
  %156 = load i32, i32* %15, align 4
  %157 = call i32 @RtlMultiByteToUnicodeSize(i32* %24, i8* %155, i32 %156)
  store i32 %157, i32* %17, align 4
  %158 = load i32, i32* %17, align 4
  %159 = call i32 @NT_SUCCESS(i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %154
  %162 = load i32, i32* %17, align 4
  %163 = call i32 @DPRINT1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* @STATUS_SXS_CANT_GEN_ACTCTX, align 4
  store i32 %164, i32* %8, align 4
  br label %206

165:                                              ; preds = %154
  %166 = call i32 (...) @RtlGetProcessHeap()
  %167 = load i32, i32* %24, align 4
  %168 = call i32* @RtlAllocateHeap(i32 %166, i32 0, i32 %167)
  store i32* %168, i32** %23, align 8
  %169 = load i32*, i32** %23, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %165
  %172 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %172, i32* %8, align 4
  br label %206

173:                                              ; preds = %165
  %174 = load i32*, i32** %23, align 8
  %175 = load i32, i32* %24, align 4
  %176 = load i8*, i8** %14, align 8
  %177 = load i32, i32* %15, align 4
  %178 = call i32 @RtlMultiByteToUnicodeN(i32* %174, i32 %175, i32* %24, i8* %176, i32 %177)
  store i32 %178, i32* %17, align 4
  %179 = load i32, i32* %17, align 4
  %180 = call i32 @NT_SUCCESS(i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %173
  %183 = load i32, i32* %17, align 4
  %184 = call i32 @DPRINT1(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* @STATUS_SXS_CANT_GEN_ACTCTX, align 4
  store i32 %185, i32* %8, align 4
  br label %206

186:                                              ; preds = %173
  %187 = load i32*, i32** %23, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32* %187, i32** %188, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %24, align 4
  %192 = sext i32 %191 to i64
  %193 = udiv i64 %192, 4
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32* %194, i32** %195, align 8
  %196 = load %struct.actctx_loader*, %struct.actctx_loader** %9, align 8
  %197 = load %struct.assembly*, %struct.assembly** %18, align 8
  %198 = load %struct.assembly_identity*, %struct.assembly_identity** %10, align 8
  %199 = call i32 @parse_manifest_buffer(%struct.actctx_loader* %196, %struct.assembly* %197, %struct.assembly_identity* %198, %struct.TYPE_5__* %16)
  store i32 %199, i32* %17, align 4
  %200 = call i32 (...) @RtlGetProcessHeap()
  %201 = load i32*, i32** %23, align 8
  %202 = call i32 @RtlFreeHeap(i32 %200, i32 0, i32* %201)
  br label %203

203:                                              ; preds = %186, %137
  br label %204

204:                                              ; preds = %203, %86
  %205 = load i32, i32* %17, align 4
  store i32 %205, i32* %8, align 4
  br label %206

206:                                              ; preds = %204, %182, %171, %161, %113, %52, %41
  %207 = load i32, i32* %8, align 4
  ret i32 %207
}

declare dso_local i32 @DPRINT(i8*, i64, i64) #1

declare dso_local %struct.assembly* @add_assembly(i32, i32) #1

declare dso_local i8* @strdupW(i64) #1

declare dso_local i64 @RtlIsTextUnicode(i8*, i32, i32*) #1

declare dso_local i32 @parse_manifest_buffer(%struct.actctx_loader*, %struct.assembly*, %struct.assembly_identity*, %struct.TYPE_5__*) #1

declare dso_local i32* @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @RtlUshortByteSwap(i32) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, i32*) #1

declare dso_local i32 @RtlMultiByteToUnicodeSize(i32*, i8*, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @DPRINT1(i8*, i32) #1

declare dso_local i32 @RtlMultiByteToUnicodeN(i32*, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
