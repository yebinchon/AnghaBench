; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_declarator.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_declarator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i8, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32 }

@CPARSE_MAX_DECLDEPTH = common dso_local global i64 0, align 8
@LJ_ERR_XLEVELS = common dso_local global i32 0, align 4
@CTSIZE_PTR = common dso_local global i32 0, align 4
@CT_PTR = common dso_local global i32 0, align 4
@CTALIGN_PTR = common dso_local global i32 0, align 4
@CTF_QUAL = common dso_local global i32 0, align 4
@CTF_REF = common dso_local global i32 0, align 4
@CTMASK_MSIZEP = common dso_local global i32 0, align 4
@CTSHIFT_MSIZEP = common dso_local global i32 0, align 4
@CTOK_ANDAND = common dso_local global i8 0, align 1
@CPARSE_MODE_ABSTRACT = common dso_local global i32 0, align 4
@CTOK_IDENT = common dso_local global i8 0, align 1
@CPARSE_MODE_DIRECT = common dso_local global i32 0, align 4
@CTOK_EOF = common dso_local global i8 0, align 1
@CPARSE_MODE_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_23__*)* @cp_declarator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_declarator(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* @CPARSE_MAX_DECLDEPTH, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %16 = load i32, i32* @LJ_ERR_XLEVELS, align 4
  %17 = call i32 @cp_err(%struct.TYPE_22__* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %2
  br label %19

19:                                               ; preds = %80, %18
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %21 = call i64 @cp_opt(%struct.TYPE_22__* %20, i8 signext 42)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %19
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %26 = call i32 @cp_decl_attributes(%struct.TYPE_22__* %24, %struct.TYPE_23__* %25)
  %27 = load i32, i32* @CTSIZE_PTR, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @CT_PTR, align 4
  %29 = load i32, i32* @CTALIGN_PTR, align 4
  %30 = call i32 @CTINFO(i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CTF_QUAL, align 4
  %35 = load i32, i32* @CTF_REF, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @CTF_QUAL, align 4
  %41 = load i32, i32* @CTMASK_MSIZEP, align 4
  %42 = load i32, i32* @CTSHIFT_MSIZEP, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %40, %43
  %45 = xor i32 %44, -1
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @cp_push(%struct.TYPE_23__* %50, i32 %51, i32 %52)
  br label %80

54:                                               ; preds = %19
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %56 = call i64 @cp_opt(%struct.TYPE_22__* %55, i8 signext 38)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %60 = load i8, i8* @CTOK_ANDAND, align 1
  %61 = call i64 @cp_opt(%struct.TYPE_22__* %59, i8 signext %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58, %54
  %64 = load i32, i32* @CTF_QUAL, align 4
  %65 = load i32, i32* @CTMASK_MSIZEP, align 4
  %66 = load i32, i32* @CTSHIFT_MSIZEP, align 4
  %67 = shl i32 %65, %66
  %68 = or i32 %64, %67
  %69 = xor i32 %68, -1
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %75 = call i32 @CTINFO_REF(i32 0)
  %76 = load i32, i32* @CTSIZE_PTR, align 4
  %77 = call i32 @cp_push(%struct.TYPE_23__* %74, i32 %75, i32 %76)
  br label %79

78:                                               ; preds = %58
  br label %81

79:                                               ; preds = %63
  br label %80

80:                                               ; preds = %79, %23
  br label %19

81:                                               ; preds = %78
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %83 = call i64 @cp_opt(%struct.TYPE_22__* %82, i8 signext 40)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %117

85:                                               ; preds = %81
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %88 = call i32 @cp_decl_attributes(%struct.TYPE_22__* %86, %struct.TYPE_23__* %87)
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @CPARSE_MODE_ABSTRACT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %85
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 1
  %98 = load i8, i8* %97, align 8
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 41
  br i1 %100, label %105, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %103 = call i64 @cp_istypedecl(%struct.TYPE_22__* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101, %95
  br label %177

106:                                              ; preds = %101, %85
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %7, align 4
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  call void @cp_declarator(%struct.TYPE_22__* %110, %struct.TYPE_23__* %111)
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %113 = call i32 @cp_check(%struct.TYPE_22__* %112, i8 signext 41)
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  br label %163

117:                                              ; preds = %81
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 1
  %120 = load i8, i8* %119, align 8
  %121 = sext i8 %120 to i32
  %122 = load i8, i8* @CTOK_IDENT, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %150

125:                                              ; preds = %117
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @CPARSE_MODE_DIRECT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %125
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %134 = load i8, i8* @CTOK_EOF, align 1
  %135 = call i32 @cp_err_token(%struct.TYPE_22__* %133, i8 signext %134)
  br label %136

136:                                              ; preds = %132, %125
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 4
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %149 = call i32 @cp_next(%struct.TYPE_22__* %148)
  br label %162

150:                                              ; preds = %117
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @CPARSE_MODE_ABSTRACT, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %150
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %159 = load i8, i8* @CTOK_IDENT, align 1
  %160 = call i32 @cp_err_token(%struct.TYPE_22__* %158, i8 signext %159)
  br label %161

161:                                              ; preds = %157, %150
  br label %162

162:                                              ; preds = %161, %136
  br label %163

163:                                              ; preds = %162, %106
  br label %164

164:                                              ; preds = %183, %163
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %166 = call i64 @cp_opt(%struct.TYPE_22__* %165, i8 signext 91)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %171 = call i32 @cp_decl_array(%struct.TYPE_22__* %169, %struct.TYPE_23__* %170)
  br label %183

172:                                              ; preds = %164
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %174 = call i64 @cp_opt(%struct.TYPE_22__* %173, i8 signext 40)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %172
  br label %177

177:                                              ; preds = %176, %105
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %180 = call i32 @cp_decl_func(%struct.TYPE_22__* %178, %struct.TYPE_23__* %179)
  br label %182

181:                                              ; preds = %172
  br label %184

182:                                              ; preds = %177
  br label %183

183:                                              ; preds = %182, %168
  br label %164

184:                                              ; preds = %181
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @CPARSE_MODE_FIELD, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %184
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %193 = call i64 @cp_opt(%struct.TYPE_22__* %192, i8 signext 58)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %191
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %197 = call i32 @cp_expr_ksize(%struct.TYPE_22__* %196)
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 4
  br label %200

200:                                              ; preds = %195, %191, %184
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %203 = call i32 @cp_decl_attributes(%struct.TYPE_22__* %201, %struct.TYPE_23__* %202)
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %205 = call i32 @cp_push_attributes(%struct.TYPE_23__* %204)
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %208, -1
  store i64 %209, i64* %207, align 8
  ret void
}

declare dso_local i32 @cp_err(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @cp_opt(%struct.TYPE_22__*, i8 signext) #1

declare dso_local i32 @cp_decl_attributes(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @CTINFO(i32, i32) #1

declare dso_local i32 @cp_push(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @CTINFO_REF(i32) #1

declare dso_local i64 @cp_istypedecl(%struct.TYPE_22__*) #1

declare dso_local i32 @cp_check(%struct.TYPE_22__*, i8 signext) #1

declare dso_local i32 @cp_err_token(%struct.TYPE_22__*, i8 signext) #1

declare dso_local i32 @cp_next(%struct.TYPE_22__*) #1

declare dso_local i32 @cp_decl_array(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @cp_decl_func(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @cp_expr_ksize(%struct.TYPE_22__*) #1

declare dso_local i32 @cp_push_attributes(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
