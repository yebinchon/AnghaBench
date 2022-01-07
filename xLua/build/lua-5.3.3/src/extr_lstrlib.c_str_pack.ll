; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lstrlib.c_str_pack.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lstrlib.c_str_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { float, double, i32, i64 }

@LUAL_PACKPADBYTE = common dso_local global i8 0, align 1
@SZINT = common dso_local global i32 0, align 4
@NB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"integer overflow\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"unsigned overflow\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"string longer than given size\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"string length does not fit in given size\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"string contains zeros\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @str_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_pack(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = call i8* @luaL_checkstring(i32* %23, i32 1)
  store i8* %24, i8** %5, align 8
  store i32 1, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @initheader(i32* %25, %struct.TYPE_5__* %4)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @lua_pushnil(i32* %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @luaL_buffinit(i32* %29, i32* %3)
  br label %31

31:                                               ; preds = %234, %1
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %235

36:                                               ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @getdetails(%struct.TYPE_5__* %4, i64 %37, i8** %5, i32* %8, i32* %9)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %49, %36
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %9, align 4
  %48 = icmp sgt i32 %46, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8, i8* @LUAL_PACKPADBYTE, align 1
  %51 = call i32 @luaL_addchar(i32* %3, i8 signext %50)
  br label %45

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %10, align 4
  switch i32 %55, label %234 [
    i32 134, label %56
    i32 129, label %92
    i32 135, label %116
    i32 136, label %151
    i32 130, label %176
    i32 128, label %208
    i32 131, label %228
    i32 132, label %231
    i32 133, label %231
  ]

56:                                               ; preds = %52
  %57 = load i32*, i32** %2, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @luaL_checkinteger(i32* %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @SZINT, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %56
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @NB, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sub nsw i32 %66, 1
  %68 = shl i32 1, %67
  store i32 %68, i32* %12, align 4
  %69 = load i32*, i32** %2, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sub nsw i32 0, %70
  %72 = load i32, i32* %11, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %75, %76
  br label %78

78:                                               ; preds = %74, %63
  %79 = phi i1 [ false, %63 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @luaL_argcheck(i32* %69, i32 %80, i32 %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78, %56
  %84 = load i32, i32* %11, align 4
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @packint(i32* %3, i32 %84, i32 %86, i32 %87, i32 %90)
  br label %234

92:                                               ; preds = %52
  %93 = load i32*, i32** %2, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @luaL_checkinteger(i32* %93, i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @SZINT, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %92
  %100 = load i32*, i32** %2, align 8
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @NB, align 4
  %104 = mul nsw i32 %102, %103
  %105 = shl i32 1, %104
  %106 = icmp slt i32 %101, %105
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @luaL_argcheck(i32* %100, i32 %107, i32 %108, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %110

110:                                              ; preds = %99, %92
  %111 = load i32, i32* %13, align 4
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @packint(i32* %3, i32 %111, i32 %113, i32 %114, i32 0)
  br label %234

116:                                              ; preds = %52
  %117 = load i32, i32* %8, align 4
  %118 = call i8* @luaL_prepbuffsize(i32* %3, i32 %117)
  store i8* %118, i8** %15, align 8
  %119 = load i32*, i32** %2, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i64 @luaL_checknumber(i32* %119, i32 %120)
  store i64 %121, i64* %16, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = icmp eq i64 %123, 4
  br i1 %124, label %125, label %129

125:                                              ; preds = %116
  %126 = load i64, i64* %16, align 8
  %127 = sitofp i64 %126 to float
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store volatile float %127, float* %128, align 8
  br label %141

129:                                              ; preds = %116
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = icmp eq i64 %131, 8
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i64, i64* %16, align 8
  %135 = sitofp i64 %134 to double
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store volatile double %135, double* %136, align 8
  br label %140

137:                                              ; preds = %129
  %138 = load i64, i64* %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  store volatile i64 %138, i64* %139, align 8
  br label %140

140:                                              ; preds = %137, %133
  br label %141

141:                                              ; preds = %140, %125
  %142 = load i8*, i8** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %144 = load volatile i32, i32* %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @copywithendian(i8* %142, i32 %144, i32 %145, i32 %147)
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @luaL_addsize(i32* %3, i32 %149)
  br label %234

151:                                              ; preds = %52
  %152 = load i32*, i32** %2, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i8* @luaL_checklstring(i32* %152, i32 %153, i64* %17)
  store i8* %154, i8** %18, align 8
  %155 = load i32*, i32** %2, align 8
  %156 = load i64, i64* %17, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = icmp ule i64 %156, %158
  %160 = zext i1 %159 to i32
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @luaL_argcheck(i32* %155, i32 %160, i32 %161, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %163 = load i8*, i8** %18, align 8
  %164 = load i64, i64* %17, align 8
  %165 = call i32 @luaL_addlstring(i32* %3, i8* %163, i64 %164)
  br label %166

166:                                              ; preds = %172, %151
  %167 = load i64, i64* %17, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %17, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = icmp ult i64 %167, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load i8, i8* @LUAL_PACKPADBYTE, align 1
  %174 = call i32 @luaL_addchar(i32* %3, i8 signext %173)
  br label %166

175:                                              ; preds = %166
  br label %234

176:                                              ; preds = %52
  %177 = load i32*, i32** %2, align 8
  %178 = load i32, i32* %6, align 4
  %179 = call i8* @luaL_checklstring(i32* %177, i32 %178, i64* %19)
  store i8* %179, i8** %20, align 8
  %180 = load i32*, i32** %2, align 8
  %181 = load i32, i32* %8, align 4
  %182 = icmp sge i32 %181, 8
  br i1 %182, label %191, label %183

183:                                              ; preds = %176
  %184 = load i64, i64* %19, align 8
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* @NB, align 4
  %187 = mul nsw i32 %185, %186
  %188 = zext i32 %187 to i64
  %189 = shl i64 1, %188
  %190 = icmp ult i64 %184, %189
  br label %191

191:                                              ; preds = %183, %176
  %192 = phi i1 [ true, %176 ], [ %190, %183 ]
  %193 = zext i1 %192 to i32
  %194 = load i32, i32* %6, align 4
  %195 = call i32 @luaL_argcheck(i32* %180, i32 %193, i32 %194, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %196 = load i64, i64* %19, align 8
  %197 = trunc i64 %196 to i32
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @packint(i32* %3, i32 %197, i32 %199, i32 %200, i32 0)
  %202 = load i8*, i8** %20, align 8
  %203 = load i64, i64* %19, align 8
  %204 = call i32 @luaL_addlstring(i32* %3, i8* %202, i64 %203)
  %205 = load i64, i64* %19, align 8
  %206 = load i64, i64* %7, align 8
  %207 = add i64 %206, %205
  store i64 %207, i64* %7, align 8
  br label %234

208:                                              ; preds = %52
  %209 = load i32*, i32** %2, align 8
  %210 = load i32, i32* %6, align 4
  %211 = call i8* @luaL_checklstring(i32* %209, i32 %210, i64* %21)
  store i8* %211, i8** %22, align 8
  %212 = load i32*, i32** %2, align 8
  %213 = load i8*, i8** %22, align 8
  %214 = call i64 @strlen(i8* %213)
  %215 = load i64, i64* %21, align 8
  %216 = icmp eq i64 %214, %215
  %217 = zext i1 %216 to i32
  %218 = load i32, i32* %6, align 4
  %219 = call i32 @luaL_argcheck(i32* %212, i32 %217, i32 %218, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %220 = load i8*, i8** %22, align 8
  %221 = load i64, i64* %21, align 8
  %222 = call i32 @luaL_addlstring(i32* %3, i8* %220, i64 %221)
  %223 = call i32 @luaL_addchar(i32* %3, i8 signext 0)
  %224 = load i64, i64* %21, align 8
  %225 = add i64 %224, 1
  %226 = load i64, i64* %7, align 8
  %227 = add i64 %226, %225
  store i64 %227, i64* %7, align 8
  br label %234

228:                                              ; preds = %52
  %229 = load i8, i8* @LUAL_PACKPADBYTE, align 1
  %230 = call i32 @luaL_addchar(i32* %3, i8 signext %229)
  br label %231

231:                                              ; preds = %52, %52, %228
  %232 = load i32, i32* %6, align 4
  %233 = add nsw i32 %232, -1
  store i32 %233, i32* %6, align 4
  br label %234

234:                                              ; preds = %52, %231, %208, %191, %175, %141, %110, %83
  br label %31

235:                                              ; preds = %31
  %236 = call i32 @luaL_pushresult(i32* %3)
  ret i32 1
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @initheader(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @getdetails(%struct.TYPE_5__*, i64, i8**, i32*, i32*) #1

declare dso_local i32 @luaL_addchar(i32*, i8 signext) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @packint(i32*, i32, i32, i32, i32) #1

declare dso_local i8* @luaL_prepbuffsize(i32*, i32) #1

declare dso_local i64 @luaL_checknumber(i32*, i32) #1

declare dso_local i32 @copywithendian(i8*, i32, i32, i32) #1

declare dso_local i32 @luaL_addsize(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
