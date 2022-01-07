; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_bcemit_unop.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_bcemit_unop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i64 }
%struct.TYPE_39__ = type { i64, %struct.TYPE_35__, i32, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_34__, i32 }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_36__ = type { i64 }

@BC_NOT = common dso_local global i64 0, align 8
@VKNIL = common dso_local global i64 0, align 8
@VKFALSE = common dso_local global i64 0, align 8
@VKTRUE = common dso_local global i64 0, align 8
@LJ_HASFFI = common dso_local global i64 0, align 8
@VKCDATA = common dso_local global i64 0, align 8
@VJMP = common dso_local global i64 0, align 8
@VRELOCABLE = common dso_local global i64 0, align 8
@VNONRELOC = common dso_local global i64 0, align 8
@BC_UNM = common dso_local global i64 0, align 8
@BC_LEN = common dso_local global i64 0, align 8
@CTID_COMPLEX_DOUBLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_38__*, i64, %struct.TYPE_39__*)* @bcemit_unop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcemit_unop(%struct.TYPE_38__* %0, i64 %1, %struct.TYPE_39__* %2) #0 {
  %4 = alloca %struct.TYPE_38__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_39__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_39__* %2, %struct.TYPE_39__** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @BC_NOT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %120

13:                                               ; preds = %3
  %14 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %26 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @jmp_dropval(%struct.TYPE_38__* %25, i32 %28)
  %30 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %31 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @jmp_dropval(%struct.TYPE_38__* %30, i32 %33)
  %35 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %36 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %37 = call i32 @expr_discharge(%struct.TYPE_38__* %35, %struct.TYPE_39__* %36)
  %38 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VKNIL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %13
  %44 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VKFALSE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43, %13
  %50 = load i64, i64* @VKTRUE, align 8
  %51 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %202

53:                                               ; preds = %43
  %54 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %55 = call i64 @expr_isk(%struct.TYPE_39__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* @LJ_HASFFI, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @VKCDATA, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60, %53
  %67 = load i64, i64* @VKFALSE, align 8
  %68 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %202

70:                                               ; preds = %60, %57
  %71 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @VJMP, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %78 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %79 = call i32 @invertcond(%struct.TYPE_38__* %77, %struct.TYPE_39__* %78)
  br label %202

80:                                               ; preds = %70
  %81 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @VRELOCABLE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %80
  %87 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %88 = call i32 @bcreg_reserve(%struct.TYPE_38__* %87, i32 1)
  %89 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %90 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %91 = call i32 @bcptr(%struct.TYPE_38__* %89, %struct.TYPE_39__* %90)
  %92 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %94, 1
  %96 = call i32 @setbc_a(i32 %91, i64 %95)
  %97 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %99, 1
  %101 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %103, i32 0, i32 0
  store i64 %100, i64* %104, align 8
  %105 = load i64, i64* @VNONRELOC, align 8
  %106 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  br label %116

108:                                              ; preds = %80
  %109 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @VNONRELOC, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @lua_assert(i32 %114)
  br label %116

116:                                              ; preds = %108, %86
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118
  br label %183

120:                                              ; preds = %3
  %121 = load i64, i64* %5, align 8
  %122 = load i64, i64* @BC_UNM, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i64, i64* %5, align 8
  %126 = load i64, i64* @BC_LEN, align 8
  %127 = icmp eq i64 %125, %126
  br label %128

128:                                              ; preds = %124, %120
  %129 = phi i1 [ true, %120 ], [ %127, %124 ]
  %130 = zext i1 %129 to i32
  %131 = call i32 @lua_assert(i32 %130)
  %132 = load i64, i64* %5, align 8
  %133 = load i64, i64* @BC_UNM, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %179

135:                                              ; preds = %128
  %136 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %137 = call i32 @expr_hasjump(%struct.TYPE_39__* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %179, label %139

139:                                              ; preds = %135
  %140 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %141 = call i64 @expr_isnumk(%struct.TYPE_39__* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %178

143:                                              ; preds = %139
  %144 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %145 = call i32 @expr_numiszero(%struct.TYPE_39__* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %178, label %147

147:                                              ; preds = %143
  %148 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %149 = call %struct.TYPE_36__* @expr_numtv(%struct.TYPE_39__* %148)
  store %struct.TYPE_36__* %149, %struct.TYPE_36__** %8, align 8
  %150 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %151 = call i64 @tvisint(%struct.TYPE_36__* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %147
  %154 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %155 = call i64 @intV(%struct.TYPE_36__* %154)
  store i64 %155, i64* %9, align 8
  %156 = load i64, i64* %9, align 8
  %157 = load i64, i64* %9, align 8
  %158 = sub nsw i64 0, %157
  %159 = icmp eq i64 %156, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %162 = load i64, i64* %9, align 8
  %163 = trunc i64 %162 to i32
  %164 = sub nsw i32 0, %163
  %165 = call i32 @setnumV(%struct.TYPE_36__* %161, i32 %164)
  br label %171

166:                                              ; preds = %153
  %167 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %168 = load i64, i64* %9, align 8
  %169 = sub nsw i64 0, %168
  %170 = call i32 @setintV(%struct.TYPE_36__* %167, i64 %169)
  br label %171

171:                                              ; preds = %166, %160
  br label %202

172:                                              ; preds = %147
  %173 = call i64 @U64x(i32 80000000, i32 0)
  %174 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = xor i64 %176, %173
  store i64 %177, i64* %175, align 8
  br label %202

178:                                              ; preds = %143, %139
  br label %179

179:                                              ; preds = %178, %135, %128
  %180 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %181 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %182 = call i32 @expr_toanyreg(%struct.TYPE_38__* %180, %struct.TYPE_39__* %181)
  br label %183

183:                                              ; preds = %179, %119
  %184 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %185 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %186 = call i32 @expr_free(%struct.TYPE_38__* %184, %struct.TYPE_39__* %185)
  %187 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %188 = load i64, i64* %5, align 8
  %189 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i64 @bcemit_AD(%struct.TYPE_38__* %187, i64 %188, i32 0, i64 %193)
  %195 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %197, i32 0, i32 0
  store i64 %194, i64* %198, align 8
  %199 = load i64, i64* @VRELOCABLE, align 8
  %200 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %200, i32 0, i32 0
  store i64 %199, i64* %201, align 8
  br label %202

202:                                              ; preds = %183, %172, %171, %76, %66, %49
  ret void
}

declare dso_local i32 @jmp_dropval(%struct.TYPE_38__*, i32) #1

declare dso_local i32 @expr_discharge(%struct.TYPE_38__*, %struct.TYPE_39__*) #1

declare dso_local i64 @expr_isk(%struct.TYPE_39__*) #1

declare dso_local i32 @invertcond(%struct.TYPE_38__*, %struct.TYPE_39__*) #1

declare dso_local i32 @bcreg_reserve(%struct.TYPE_38__*, i32) #1

declare dso_local i32 @setbc_a(i32, i64) #1

declare dso_local i32 @bcptr(%struct.TYPE_38__*, %struct.TYPE_39__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @expr_hasjump(%struct.TYPE_39__*) #1

declare dso_local i64 @expr_isnumk(%struct.TYPE_39__*) #1

declare dso_local i32 @expr_numiszero(%struct.TYPE_39__*) #1

declare dso_local %struct.TYPE_36__* @expr_numtv(%struct.TYPE_39__*) #1

declare dso_local i64 @tvisint(%struct.TYPE_36__*) #1

declare dso_local i64 @intV(%struct.TYPE_36__*) #1

declare dso_local i32 @setnumV(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @setintV(%struct.TYPE_36__*, i64) #1

declare dso_local i64 @U64x(i32, i32) #1

declare dso_local i32 @expr_toanyreg(%struct.TYPE_38__*, %struct.TYPE_39__*) #1

declare dso_local i32 @expr_free(%struct.TYPE_38__*, %struct.TYPE_39__*) #1

declare dso_local i64 @bcemit_AD(%struct.TYPE_38__*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
