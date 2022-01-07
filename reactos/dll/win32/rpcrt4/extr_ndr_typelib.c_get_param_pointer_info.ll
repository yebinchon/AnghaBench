; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_get_param_pointer_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_get_param_pointer_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i16, i32, %struct.TYPE_10__ }

@S_OK = common dso_local global i32 0, align 4
@MustFree = common dso_local global i16 0, align 2
@IsSimpleRef = common dso_local global i16 0, align 2
@IsBasetype = common dso_local global i16 0, align 2
@FC_ENUM32 = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [20 x i8] c"unhandled kind %#x\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, i32, i32, i16*, i16*, i8*, %struct.TYPE_10__**)* @get_param_pointer_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_param_pointer_info(i32* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3, i16* %4, i16* %5, i8* %6, %struct.TYPE_10__** %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16*, align 8
  %14 = alloca i16*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_10__**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i16* %4, i16** %13, align 8
  store i16* %5, i16** %14, align 8
  store i8* %6, i8** %15, align 8
  store %struct.TYPE_10__** %7, %struct.TYPE_10__*** %16, align 8
  %20 = load i32, i32* @S_OK, align 4
  store i32 %20, i32* %18, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %191 [
    i32 129, label %24
    i32 131, label %24
    i32 130, label %40
    i32 132, label %87
    i32 128, label %104
  ]

24:                                               ; preds = %8, %8
  %25 = load i16, i16* @MustFree, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16*, i16** %14, align 8
  %28 = load i16, i16* %27, align 2
  %29 = zext i16 %28 to i32
  %30 = or i32 %29, %26
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %27, align 2
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i16*, i16** %13, align 8
  store i16 8, i16* %38, align 2
  br label %39

39:                                               ; preds = %37, %34, %24
  br label %227

40:                                               ; preds = %8
  %41 = load i16, i16* @MustFree, align 2
  %42 = zext i16 %41 to i32
  %43 = load i16*, i16** %14, align 8
  %44 = load i16, i16* %43, align 2
  %45 = zext i16 %44 to i32
  %46 = or i32 %45, %42
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %43, align 2
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 128
  br i1 %53, label %54, label %84

54:                                               ; preds = %40
  %55 = load i32*, i32** %9, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ITypeInfo_GetRefTypeInfo(i32* %55, i32 %60, i32** %17)
  %62 = load i32*, i32** %17, align 8
  %63 = call i32 @ITypeInfo_GetTypeAttr(i32* %62, %struct.TYPE_11__** %19)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %76 [
    i32 134, label %67
    i32 136, label %67
    i32 137, label %67
  ]

67:                                               ; preds = %54, %54, %54
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i16*, i16** %13, align 8
  store i16 8, i16* %74, align 2
  br label %75

75:                                               ; preds = %73, %70, %67
  br label %78

76:                                               ; preds = %54
  %77 = load i16*, i16** %13, align 8
  store i16 8, i16* %77, align 2
  br label %78

78:                                               ; preds = %76, %75
  %79 = load i32*, i32** %17, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %81 = call i32 @ITypeInfo_ReleaseTypeAttr(i32* %79, %struct.TYPE_11__* %80)
  %82 = load i32*, i32** %17, align 8
  %83 = call i32 @ITypeInfo_Release(i32* %82)
  br label %86

84:                                               ; preds = %40
  %85 = load i16*, i16** %13, align 8
  store i16 8, i16* %85, align 2
  br label %86

86:                                               ; preds = %84, %78
  br label %227

87:                                               ; preds = %8
  %88 = load i16, i16* @IsSimpleRef, align 2
  %89 = zext i16 %88 to i32
  %90 = load i16, i16* @MustFree, align 2
  %91 = zext i16 %90 to i32
  %92 = or i32 %89, %91
  %93 = load i16*, i16** %14, align 8
  %94 = load i16, i16* %93, align 2
  %95 = zext i16 %94 to i32
  %96 = or i32 %95, %92
  %97 = trunc i32 %96 to i16
  store i16 %97, i16* %93, align 2
  %98 = load i32*, i32** %9, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %100 = call zeroext i16 @type_memsize(i32* %98, %struct.TYPE_10__* %99)
  %101 = load i16*, i16** %13, align 8
  store i16 %100, i16* %101, align 2
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %103 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %16, align 8
  store %struct.TYPE_10__* %102, %struct.TYPE_10__** %103, align 8
  br label %227

104:                                              ; preds = %8
  %105 = load i32*, i32** %9, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ITypeInfo_GetRefTypeInfo(i32* %105, i32 %108, i32** %17)
  %110 = load i32*, i32** %17, align 8
  %111 = call i32 @ITypeInfo_GetTypeAttr(i32* %110, %struct.TYPE_11__** %19)
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  switch i32 %114, label %179 [
    i32 135, label %115
    i32 133, label %136
    i32 134, label %160
    i32 136, label %160
    i32 137, label %160
    i32 138, label %168
  ]

115:                                              ; preds = %104
  %116 = load i16, i16* @IsSimpleRef, align 2
  %117 = zext i16 %116 to i32
  %118 = load i16, i16* @IsBasetype, align 2
  %119 = zext i16 %118 to i32
  %120 = or i32 %117, %119
  %121 = load i16*, i16** %14, align 8
  %122 = load i16, i16* %121, align 2
  %123 = zext i16 %122 to i32
  %124 = or i32 %123, %120
  %125 = trunc i32 %124 to i16
  store i16 %125, i16* %121, align 2
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %115
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load i16*, i16** %13, align 8
  store i16 8, i16* %132, align 2
  br label %133

133:                                              ; preds = %131, %128, %115
  %134 = load i8, i8* @FC_ENUM32, align 1
  %135 = load i8*, i8** %15, align 8
  store i8 %134, i8* %135, align 1
  br label %185

136:                                              ; preds = %104
  %137 = load i16, i16* @IsSimpleRef, align 2
  %138 = zext i16 %137 to i32
  %139 = load i16, i16* @MustFree, align 2
  %140 = zext i16 %139 to i32
  %141 = or i32 %138, %140
  %142 = load i16*, i16** %14, align 8
  %143 = load i16, i16* %142, align 2
  %144 = zext i16 %143 to i32
  %145 = or i32 %144, %141
  %146 = trunc i32 %145 to i16
  store i16 %146, i16* %142, align 2
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %136
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i16, i16* %154, align 8
  %156 = load i16*, i16** %13, align 8
  store i16 %155, i16* %156, align 2
  br label %157

157:                                              ; preds = %152, %149, %136
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %159 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %16, align 8
  store %struct.TYPE_10__* %158, %struct.TYPE_10__** %159, align 8
  br label %185

160:                                              ; preds = %104, %104, %104
  %161 = load i16, i16* @MustFree, align 2
  %162 = zext i16 %161 to i32
  %163 = load i16*, i16** %14, align 8
  %164 = load i16, i16* %163, align 2
  %165 = zext i16 %164 to i32
  %166 = or i32 %165, %162
  %167 = trunc i32 %166 to i16
  store i16 %167, i16* %163, align 2
  br label %185

168:                                              ; preds = %104
  %169 = load i32*, i32** %17, align 8
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 2
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i16*, i16** %13, align 8
  %175 = load i16*, i16** %14, align 8
  %176 = load i8*, i8** %15, align 8
  %177 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %16, align 8
  %178 = call i32 @get_param_pointer_info(i32* %169, %struct.TYPE_10__* %171, i32 %172, i32 %173, i16* %174, i16* %175, i8* %176, %struct.TYPE_10__** %177)
  store i32 %178, i32* %18, align 4
  br label %185

179:                                              ; preds = %104
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @FIXME(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %184, i32* %18, align 4
  br label %185

185:                                              ; preds = %179, %168, %160, %157, %133
  %186 = load i32*, i32** %17, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %188 = call i32 @ITypeInfo_ReleaseTypeAttr(i32* %186, %struct.TYPE_11__* %187)
  %189 = load i32*, i32** %17, align 8
  %190 = call i32 @ITypeInfo_Release(i32* %189)
  br label %227

191:                                              ; preds = %8
  %192 = load i16, i16* @IsSimpleRef, align 2
  %193 = zext i16 %192 to i32
  %194 = load i16*, i16** %14, align 8
  %195 = load i16, i16* %194, align 2
  %196 = zext i16 %195 to i32
  %197 = or i32 %196, %193
  %198 = trunc i32 %197 to i16
  store i16 %198, i16* %194, align 2
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %200 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %16, align 8
  store %struct.TYPE_10__* %199, %struct.TYPE_10__** %200, align 8
  %201 = load i32, i32* %11, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %211, label %203

203:                                              ; preds = %191
  %204 = load i32, i32* %12, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %203
  %207 = load i32*, i32** %9, align 8
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %209 = call zeroext i16 @type_memsize(i32* %207, %struct.TYPE_10__* %208)
  %210 = load i16*, i16** %13, align 8
  store i16 %209, i16* %210, align 2
  br label %211

211:                                              ; preds = %206, %203, %191
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call zeroext i8 @get_base_type(i32 %214)
  %216 = load i8*, i8** %15, align 8
  store i8 %215, i8* %216, align 1
  %217 = icmp ne i8 %215, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %211
  %219 = load i16, i16* @IsBasetype, align 2
  %220 = zext i16 %219 to i32
  %221 = load i16*, i16** %14, align 8
  %222 = load i16, i16* %221, align 2
  %223 = zext i16 %222 to i32
  %224 = or i32 %223, %220
  %225 = trunc i32 %224 to i16
  store i16 %225, i16* %221, align 2
  br label %226

226:                                              ; preds = %218, %211
  br label %227

227:                                              ; preds = %226, %185, %87, %86, %39
  %228 = load i32, i32* %18, align 4
  ret i32 %228
}

declare dso_local i32 @ITypeInfo_GetRefTypeInfo(i32*, i32, i32**) #1

declare dso_local i32 @ITypeInfo_GetTypeAttr(i32*, %struct.TYPE_11__**) #1

declare dso_local i32 @ITypeInfo_ReleaseTypeAttr(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @ITypeInfo_Release(i32*) #1

declare dso_local zeroext i16 @type_memsize(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local zeroext i8 @get_base_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
