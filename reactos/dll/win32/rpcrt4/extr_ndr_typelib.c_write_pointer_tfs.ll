; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_write_pointer_tfs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_write_pointer_tfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32, i32 }

@VT_USERDEFINED = common dso_local global i64 0, align 8
@FC_UP = common dso_local global i8 0, align 1
@FC_SIMPLE_POINTER = common dso_local global i8 0, align 1
@FC_ENUM32 = common dso_local global i8 0, align 1
@FC_PAD = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [20 x i8] c"unhandled kind %#x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@FC_ALLOCED_ON_STACK = common dso_local global i8 0, align 1
@VT_PTR = common dso_local global i64 0, align 8
@VT_UNKNOWN = common dso_local global i64 0, align 8
@VT_DISPATCH = common dso_local global i64 0, align 8
@FC_POINTER_DEREF = common dso_local global i8 0, align 1
@FC_RP = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i64*, %struct.TYPE_8__*, i64, i64)* @write_pointer_tfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_pointer_tfs(i32* %0, i8* %1, i64* %2, %struct.TYPE_8__* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  store i8 0, i8* %14, align 1
  %20 = load i64*, i64** %9, align 8
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %16, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VT_USERDEFINED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %133

27:                                               ; preds = %6
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ITypeInfo_GetRefTypeInfo(i32* %28, i32 %31, i32** %17)
  %33 = load i32*, i32** %17, align 8
  %34 = call i32 @ITypeInfo_GetTypeAttr(i32* %33, %struct.TYPE_9__** %18)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %118 [
    i32 130, label %38
    i32 128, label %64
    i32 129, label %94
    i32 131, label %94
    i32 132, label %100
    i32 133, label %109
  ]

38:                                               ; preds = %27
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i8*, i8** %8, align 8
  %45 = load i64*, i64** %9, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i8, i8* @FC_UP, align 1
  %48 = call i32 @WRITE_CHAR(i8* %44, i64 %46, i8 zeroext %47)
  %49 = load i8*, i8** %8, align 8
  %50 = load i64*, i64** %9, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i8, i8* @FC_SIMPLE_POINTER, align 1
  %53 = call i32 @WRITE_CHAR(i8* %49, i64 %51, i8 zeroext %52)
  %54 = load i8*, i8** %8, align 8
  %55 = load i64*, i64** %9, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i8, i8* @FC_ENUM32, align 1
  %58 = call i32 @WRITE_CHAR(i8* %54, i64 %56, i8 zeroext %57)
  %59 = load i8*, i8** %8, align 8
  %60 = load i64*, i64** %9, align 8
  %61 = load i64, i64* %60, align 8
  %62 = load i8, i8* @FC_PAD, align 1
  %63 = call i32 @WRITE_CHAR(i8* %59, i64 %61, i8 zeroext %62)
  br label %127

64:                                               ; preds = %27
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i32*, i32** %17, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i64*, i64** %9, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %74 = call i64 @write_struct_tfs(i32* %70, i8* %71, i64* %72, %struct.TYPE_9__* %73)
  store i64 %74, i64* %15, align 8
  %75 = load i64*, i64** %9, align 8
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %16, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load i64*, i64** %9, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load i8, i8* @FC_UP, align 1
  %81 = call i32 @WRITE_CHAR(i8* %77, i64 %79, i8 zeroext %80)
  %82 = load i8*, i8** %8, align 8
  %83 = load i64*, i64** %9, align 8
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @WRITE_CHAR(i8* %82, i64 %84, i8 zeroext 0)
  %86 = load i8*, i8** %8, align 8
  %87 = load i64*, i64** %9, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %15, align 8
  %90 = load i64*, i64** %9, align 8
  %91 = load i64, i64* %90, align 8
  %92 = sub i64 %89, %91
  %93 = call i32 @WRITE_SHORT(i8* %86, i64 %88, i64 %92)
  br label %127

94:                                               ; preds = %27, %27
  %95 = load i8*, i8** %8, align 8
  %96 = load i64*, i64** %9, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 3
  %99 = call i32 @write_ip_tfs(i8* %95, i64* %96, i32* %98)
  br label %127

100:                                              ; preds = %27
  %101 = load i32*, i32** %17, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @get_default_iface(i32* %101, i32 %104, i32* %19)
  %106 = load i8*, i8** %8, align 8
  %107 = load i64*, i64** %9, align 8
  %108 = call i32 @write_ip_tfs(i8* %106, i64* %107, i32* %19)
  br label %127

109:                                              ; preds = %27
  %110 = load i32*, i32** %17, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = load i64*, i64** %9, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* %12, align 8
  %117 = call i64 @write_pointer_tfs(i32* %110, i8* %111, i64* %112, %struct.TYPE_8__* %114, i64 %115, i64 %116)
  store i64 %117, i64* %16, align 8
  br label %127

118:                                              ; preds = %27
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @FIXME(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %121)
  %123 = load i8*, i8** %8, align 8
  %124 = load i64*, i64** %9, align 8
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @WRITE_SHORT(i8* %123, i64 %125, i64 0)
  br label %127

127:                                              ; preds = %118, %109, %100, %94, %64, %38
  %128 = load i32*, i32** %17, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %130 = call i32 @ITypeInfo_ReleaseTypeAttr(i32* %128, %struct.TYPE_9__* %129)
  %131 = load i32*, i32** %17, align 8
  %132 = call i32 @ITypeInfo_Release(i32* %131)
  br label %239

133:                                              ; preds = %6
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call zeroext i8 @get_base_type(i64 %136)
  store i8 %137, i8* %13, align 1
  %138 = icmp ne i8 %137, 0
  br i1 %138, label %139, label %165

139:                                              ; preds = %133
  %140 = load i64, i64* %11, align 8
  %141 = icmp ne i64 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = load i8*, i8** %8, align 8
  %146 = load i64*, i64** %9, align 8
  %147 = load i64, i64* %146, align 8
  %148 = load i8, i8* @FC_UP, align 1
  %149 = call i32 @WRITE_CHAR(i8* %145, i64 %147, i8 zeroext %148)
  %150 = load i8*, i8** %8, align 8
  %151 = load i64*, i64** %9, align 8
  %152 = load i64, i64* %151, align 8
  %153 = load i8, i8* @FC_SIMPLE_POINTER, align 1
  %154 = call i32 @WRITE_CHAR(i8* %150, i64 %152, i8 zeroext %153)
  %155 = load i8*, i8** %8, align 8
  %156 = load i64*, i64** %9, align 8
  %157 = load i64, i64* %156, align 8
  %158 = load i8, i8* %13, align 1
  %159 = call i32 @WRITE_CHAR(i8* %155, i64 %157, i8 zeroext %158)
  %160 = load i8*, i8** %8, align 8
  %161 = load i64*, i64** %9, align 8
  %162 = load i64, i64* %161, align 8
  %163 = load i8, i8* @FC_PAD, align 1
  %164 = call i32 @WRITE_CHAR(i8* %160, i64 %162, i8 zeroext %163)
  br label %238

165:                                              ; preds = %133
  %166 = load i32*, i32** %7, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = load i64*, i64** %9, align 8
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %170 = load i32, i32* @FALSE, align 4
  %171 = load i32, i32* @FALSE, align 4
  %172 = call i64 @write_type_tfs(i32* %166, i8* %167, i64* %168, %struct.TYPE_8__* %169, i32 %170, i32 %171)
  store i64 %172, i64* %15, align 8
  %173 = load i64, i64* %12, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %165
  %176 = load i8, i8* @FC_ALLOCED_ON_STACK, align 1
  %177 = zext i8 %176 to i32
  %178 = load i8, i8* %14, align 1
  %179 = zext i8 %178 to i32
  %180 = or i32 %179, %177
  %181 = trunc i32 %180 to i8
  store i8 %181, i8* %14, align 1
  br label %182

182:                                              ; preds = %175, %165
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @VT_PTR, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %200, label %188

188:                                              ; preds = %182
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @VT_UNKNOWN, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %200, label %194

194:                                              ; preds = %188
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @VT_DISPATCH, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %194, %188, %182
  %201 = load i8, i8* @FC_POINTER_DEREF, align 1
  %202 = zext i8 %201 to i32
  %203 = load i8, i8* %14, align 1
  %204 = zext i8 %203 to i32
  %205 = or i32 %204, %202
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %14, align 1
  br label %207

207:                                              ; preds = %200, %194
  %208 = load i64*, i64** %9, align 8
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %16, align 8
  %210 = load i8*, i8** %8, align 8
  %211 = load i64*, i64** %9, align 8
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* %11, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %207
  %216 = load i8, i8* @FC_RP, align 1
  %217 = zext i8 %216 to i32
  br label %221

218:                                              ; preds = %207
  %219 = load i8, i8* @FC_UP, align 1
  %220 = zext i8 %219 to i32
  br label %221

221:                                              ; preds = %218, %215
  %222 = phi i32 [ %217, %215 ], [ %220, %218 ]
  %223 = trunc i32 %222 to i8
  %224 = call i32 @WRITE_CHAR(i8* %210, i64 %212, i8 zeroext %223)
  %225 = load i8*, i8** %8, align 8
  %226 = load i64*, i64** %9, align 8
  %227 = load i64, i64* %226, align 8
  %228 = load i8, i8* %14, align 1
  %229 = call i32 @WRITE_CHAR(i8* %225, i64 %227, i8 zeroext %228)
  %230 = load i8*, i8** %8, align 8
  %231 = load i64*, i64** %9, align 8
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* %15, align 8
  %234 = load i64*, i64** %9, align 8
  %235 = load i64, i64* %234, align 8
  %236 = sub i64 %233, %235
  %237 = call i32 @WRITE_SHORT(i8* %230, i64 %232, i64 %236)
  br label %238

238:                                              ; preds = %221, %139
  br label %239

239:                                              ; preds = %238, %127
  %240 = load i64, i64* %16, align 8
  ret i64 %240
}

declare dso_local i32 @ITypeInfo_GetRefTypeInfo(i32*, i32, i32**) #1

declare dso_local i32 @ITypeInfo_GetTypeAttr(i32*, %struct.TYPE_9__**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @WRITE_CHAR(i8*, i64, i8 zeroext) #1

declare dso_local i64 @write_struct_tfs(i32*, i8*, i64*, %struct.TYPE_9__*) #1

declare dso_local i32 @WRITE_SHORT(i8*, i64, i64) #1

declare dso_local i32 @write_ip_tfs(i8*, i64*, i32*) #1

declare dso_local i32 @get_default_iface(i32*, i32, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @ITypeInfo_ReleaseTypeAttr(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @ITypeInfo_Release(i32*) #1

declare dso_local zeroext i8 @get_base_type(i64) #1

declare dso_local i64 @write_type_tfs(i32*, i8*, i64*, %struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
