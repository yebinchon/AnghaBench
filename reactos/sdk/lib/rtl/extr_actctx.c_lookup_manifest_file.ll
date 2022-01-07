; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_lookup_manifest_file.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_lookup_manifest_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assembly_identity = type { i8*, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i8*, i32, i64 }

@lookup_manifest_file.lookup_fmtW = internal constant [33 x i8] c"%s_%s_%s_%u.%u.*.*_%s_*.manifest\00", align 16
@lookup_manifest_file.wine_trailerW = internal constant [17 x i8] c"deadbeef.manifest", align 16
@neutralW = common dso_local global i32 0, align 4
@wildcardW = common dso_local global i8* null, align 8
@FileBothDirectoryInformation = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no matching file for %S\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.assembly_identity*)* @lookup_manifest_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lookup_manifest_file(i32 %0, %struct.assembly_identity* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.assembly_identity*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8192 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.assembly_identity* %1, %struct.assembly_identity** %5, align 8
  store i8* null, i8** %7, align 8
  %20 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %21 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %23 = call i32 (...) @RtlGetProcessHeap()
  %24 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %25 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @strlenW(i32 %26)
  %28 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %29 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strlenW(i32 %30)
  %32 = add nsw i32 %27, %31
  %33 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %34 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @strlenW(i32 %35)
  %37 = add nsw i32 %32, %36
  %38 = add nsw i32 %37, 20
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 1
  %41 = add i64 %40, 33
  %42 = trunc i64 %41 to i32
  %43 = call i8* @RtlAllocateHeap(i32 %23, i32 0, i32 %42)
  store i8* %43, i8** %6, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %246

46:                                               ; preds = %2
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* @neutralW, align 4
  %52 = call i32 @strcmpiW(i8* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49, %46
  %55 = load i8*, i8** @wildcardW, align 8
  store i8* %55, i8** %10, align 8
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %59 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %62 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %65 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %68 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %72 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @sprintfW(i8* %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @lookup_manifest_file.lookup_fmtW, i64 0, i64 0), i32 %60, i32 %63, i32 %66, i32 %70, i32 %74, i8* %75)
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @RtlInitUnicodeString(i32* %8, i8* %77)
  %79 = load i32, i32* %4, align 4
  %80 = getelementptr inbounds [8192 x i8], [8192 x i8]* %13, i64 0, i64 0
  %81 = load i32, i32* @FileBothDirectoryInformation, align 4
  %82 = load i32, i32* @FALSE, align 4
  %83 = load i32, i32* @TRUE, align 4
  %84 = call i64 @NtQueryDirectoryFile(i32 %79, i32 0, i32* null, i32* null, %struct.TYPE_6__* %9, i8* %80, i32 8192, i32 %81, i32 %82, i32* %8, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %238, label %86

86:                                               ; preds = %56
  %87 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %88 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %14, align 8
  %91 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %92 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %236, %194, %165, %151, %86
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp uge i32 %99, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %98
  %103 = load i32, i32* %4, align 4
  %104 = getelementptr inbounds [8192 x i8], [8192 x i8]* %13, i64 0, i64 0
  %105 = load i32, i32* @FileBothDirectoryInformation, align 4
  %106 = load i32, i32* @FALSE, align 4
  %107 = load i32, i32* @FALSE, align 4
  %108 = call i64 @NtQueryDirectoryFile(i32 %103, i32 0, i32* null, i32* null, %struct.TYPE_6__* %9, i8* %104, i32 8192, i32 %105, i32 %106, i32* %8, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %237

111:                                              ; preds = %102
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %115

115:                                              ; preds = %111, %98
  %116 = getelementptr inbounds [8192 x i8], [8192 x i8]* %13, i64 0, i64 0
  %117 = load i32, i32* %11, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = bitcast i8* %119 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %120, %struct.TYPE_7__** %16, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %115
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = zext i32 %129 to i64
  %131 = add nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %11, align 4
  br label %135

133:                                              ; preds = %115
  %134 = load i32, i32* %12, align 4
  store i32 %134, i32* %11, align 4
  br label %135

135:                                              ; preds = %133, %125
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load i8*, i8** %6, align 8
  %140 = call i8* @strchrW(i8* %139, i8 signext 42)
  %141 = load i8*, i8** %6, align 8
  %142 = ptrtoint i8* %140 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = getelementptr inbounds i8, i8* %138, i64 %144
  store i8* %145, i8** %17, align 8
  %146 = load i8*, i8** %17, align 8
  %147 = call i64 @atoiW(i8* %146)
  store i64 %147, i64* %18, align 8
  %148 = load i64, i64* %18, align 8
  %149 = load i64, i64* %14, align 8
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %135
  br label %98

152:                                              ; preds = %135
  %153 = load i8*, i8** %17, align 8
  %154 = call i8* @strchrW(i8* %153, i8 signext 46)
  %155 = getelementptr inbounds i8, i8* %154, i64 1
  store i8* %155, i8** %17, align 8
  %156 = load i8*, i8** %17, align 8
  %157 = call i64 @atoiW(i8* %156)
  store i64 %157, i64* %19, align 8
  %158 = load i64, i64* %18, align 8
  %159 = load i64, i64* %14, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %152
  %162 = load i64, i64* %19, align 8
  %163 = load i64, i64* %15, align 8
  %164 = icmp slt i64 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  br label %98

166:                                              ; preds = %161, %152
  %167 = load i8*, i8** %17, align 8
  %168 = call i8* @strchrW(i8* %167, i8 signext 95)
  %169 = getelementptr inbounds i8, i8* %168, i64 1
  store i8* %169, i8** %17, align 8
  %170 = load i8*, i8** %17, align 8
  %171 = call i8* @strchrW(i8* %170, i8 signext 95)
  %172 = getelementptr inbounds i8, i8* %171, i64 1
  store i8* %172, i8** %17, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = load i8*, i8** %17, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = ptrtoint i8* %177 to i64
  %182 = ptrtoint i8* %180 to i64
  %183 = sub i64 %181, %182
  %184 = mul i64 %183, 1
  %185 = sub i64 %176, %184
  %186 = icmp eq i64 %185, 17
  br i1 %186, label %187, label %196

187:                                              ; preds = %166
  %188 = load i8*, i8** %17, align 8
  %189 = call i32 @memicmpW(i8* %188, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @lookup_manifest_file.wine_trailerW, i64 0, i64 0), i32 17)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %187
  %192 = load i8*, i8** %7, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  br label %98

195:                                              ; preds = %191
  br label %199

196:                                              ; preds = %187, %166
  %197 = load i64, i64* %18, align 8
  store i64 %197, i64* %14, align 8
  %198 = load i64, i64* %19, align 8
  store i64 %198, i64* %15, align 8
  br label %199

199:                                              ; preds = %196, %195
  %200 = load i64, i64* %18, align 8
  %201 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %202 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  store i64 %200, i64* %203, align 8
  %204 = load i64, i64* %19, align 8
  %205 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %206 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  store i64 %204, i64* %207, align 8
  %208 = call i32 (...) @RtlGetProcessHeap()
  %209 = load i8*, i8** %7, align 8
  %210 = call i32 @RtlFreeHeap(i32 %208, i32 0, i8* %209)
  %211 = call i32 (...) @RtlGetProcessHeap()
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = add i64 %215, 1
  %217 = trunc i64 %216 to i32
  %218 = call i8* @RtlAllocateHeap(i32 %211, i32 0, i32 %217)
  store i8* %218, i8** %7, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %236

220:                                              ; preds = %199
  %221 = load i8*, i8** %7, align 8
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @memcpy(i8* %221, i8* %224, i32 %227)
  %229 = load i8*, i8** %7, align 8
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = udiv i64 %233, 1
  %235 = getelementptr inbounds i8, i8* %229, i64 %234
  store i8 0, i8* %235, align 1
  br label %236

236:                                              ; preds = %220, %199
  br label %98

237:                                              ; preds = %110
  br label %241

238:                                              ; preds = %56
  %239 = load i8*, i8** %6, align 8
  %240 = call i32 @DPRINT1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %239)
  br label %241

241:                                              ; preds = %238, %237
  %242 = call i32 (...) @RtlGetProcessHeap()
  %243 = load i8*, i8** %6, align 8
  %244 = call i32 @RtlFreeHeap(i32 %242, i32 0, i8* %243)
  %245 = load i8*, i8** %7, align 8
  store i8* %245, i8** %3, align 8
  br label %246

246:                                              ; preds = %241, %45
  %247 = load i8*, i8** %3, align 8
  ret i8* %247
}

declare dso_local i8* @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @strlenW(i32) #1

declare dso_local i32 @strcmpiW(i8*, i32) #1

declare dso_local i32 @sprintfW(i8*, i8*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @RtlInitUnicodeString(i32*, i8*) #1

declare dso_local i64 @NtQueryDirectoryFile(i32, i32, i32*, i32*, %struct.TYPE_6__*, i8*, i32, i32, i32, i32*, i32) #1

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local i64 @atoiW(i8*) #1

declare dso_local i32 @memicmpW(i8*, i8*, i32) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @DPRINT1(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
