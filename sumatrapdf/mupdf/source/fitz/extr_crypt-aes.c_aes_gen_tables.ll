; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_crypt-aes.c_aes_gen_tables.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_crypt-aes.c_aes_gen_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RCON = common dso_local global i64* null, align 8
@FSb = common dso_local global i32* null, align 8
@RSb = common dso_local global i32* null, align 8
@FT0 = common dso_local global i64* null, align 8
@FT1 = common dso_local global i64* null, align 8
@FT2 = common dso_local global i64* null, align 8
@FT3 = common dso_local global i8** null, align 8
@RT0 = common dso_local global i64* null, align 8
@RT1 = common dso_local global i64* null, align 8
@RT2 = common dso_local global i64* null, align 8
@RT3 = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @aes_gen_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_gen_tables() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [256 x i32], align 16
  %6 = alloca [256 x i32], align 16
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  br label %7

7:                                                ; preds = %24, %0
  %8 = load i32, i32* %1, align 4
  %9 = icmp slt i32 %8, 256
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 %13
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 %17
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @XTIME(i32 %20)
  %22 = xor i32 %19, %21
  %23 = and i32 %22, 255
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %10
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %7

27:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %41, %27
  %29 = load i32, i32* %1, align 4
  %30 = icmp slt i32 %29, 10
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64*, i64** @RCON, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  store i64 %33, i64* %37, align 8
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @XTIME(i32 %38)
  %40 = and i32 %39, 255
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %28

44:                                               ; preds = %28
  %45 = load i32*, i32** @FSb, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 99, i32* %46, align 4
  %47 = load i32*, i32** @RSb, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 99
  store i32 0, i32* %48, align 4
  store i32 1, i32* %1, align 4
  br label %49

49:                                               ; preds = %113, %44
  %50 = load i32, i32* %1, align 4
  %51 = icmp slt i32 %50, 256
  br i1 %51, label %52, label %116

52:                                               ; preds = %49
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 255, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %2, align 4
  %61 = load i32, i32* %2, align 4
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = shl i32 %62, 1
  %64 = load i32, i32* %3, align 4
  %65 = ashr i32 %64, 7
  %66 = or i32 %63, %65
  %67 = and i32 %66, 255
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %2, align 4
  %70 = xor i32 %69, %68
  store i32 %70, i32* %2, align 4
  %71 = load i32, i32* %3, align 4
  %72 = shl i32 %71, 1
  %73 = load i32, i32* %3, align 4
  %74 = ashr i32 %73, 7
  %75 = or i32 %72, %74
  %76 = and i32 %75, 255
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* %2, align 4
  %79 = xor i32 %78, %77
  store i32 %79, i32* %2, align 4
  %80 = load i32, i32* %3, align 4
  %81 = shl i32 %80, 1
  %82 = load i32, i32* %3, align 4
  %83 = ashr i32 %82, 7
  %84 = or i32 %81, %83
  %85 = and i32 %84, 255
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* %2, align 4
  %88 = xor i32 %87, %86
  store i32 %88, i32* %2, align 4
  %89 = load i32, i32* %3, align 4
  %90 = shl i32 %89, 1
  %91 = load i32, i32* %3, align 4
  %92 = ashr i32 %91, 7
  %93 = or i32 %90, %92
  %94 = and i32 %93, 255
  store i32 %94, i32* %3, align 4
  %95 = load i32, i32* %3, align 4
  %96 = xor i32 %95, 99
  %97 = load i32, i32* %2, align 4
  %98 = xor i32 %97, %96
  store i32 %98, i32* %2, align 4
  %99 = load i32, i32* %2, align 4
  %100 = trunc i32 %99 to i8
  %101 = zext i8 %100 to i32
  %102 = load i32*, i32** @FSb, align 8
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  %106 = load i32, i32* %1, align 4
  %107 = trunc i32 %106 to i8
  %108 = zext i8 %107 to i32
  %109 = load i32*, i32** @RSb, align 8
  %110 = load i32, i32* %2, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %52
  %114 = load i32, i32* %1, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %1, align 4
  br label %49

116:                                              ; preds = %49
  store i32 0, i32* %1, align 4
  br label %117

117:                                              ; preds = %238, %116
  %118 = load i32, i32* %1, align 4
  %119 = icmp slt i32 %118, 256
  br i1 %119, label %120, label %241

120:                                              ; preds = %117
  %121 = load i32*, i32** @FSb, align 8
  %122 = load i32, i32* %1, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %2, align 4
  %126 = load i32, i32* %2, align 4
  %127 = call i32 @XTIME(i32 %126)
  %128 = and i32 %127, 255
  store i32 %128, i32* %3, align 4
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* %2, align 4
  %131 = xor i32 %129, %130
  %132 = and i32 %131, 255
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %3, align 4
  %134 = sext i32 %133 to i64
  %135 = load i32, i32* %2, align 4
  %136 = sext i32 %135 to i64
  %137 = shl i64 %136, 8
  %138 = xor i64 %134, %137
  %139 = load i32, i32* %2, align 4
  %140 = sext i32 %139 to i64
  %141 = shl i64 %140, 16
  %142 = xor i64 %138, %141
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = shl i64 %144, 24
  %146 = xor i64 %142, %145
  %147 = load i64*, i64** @FT0, align 8
  %148 = load i32, i32* %1, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  store i64 %146, i64* %150, align 8
  %151 = load i64*, i64** @FT0, align 8
  %152 = load i32, i32* %1, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = call i8* @ROTL8(i64 %155)
  %157 = ptrtoint i8* %156 to i64
  %158 = load i64*, i64** @FT1, align 8
  %159 = load i32, i32* %1, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  store i64 %157, i64* %161, align 8
  %162 = load i64*, i64** @FT1, align 8
  %163 = load i32, i32* %1, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = call i8* @ROTL8(i64 %166)
  %168 = ptrtoint i8* %167 to i64
  %169 = load i64*, i64** @FT2, align 8
  %170 = load i32, i32* %1, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  store i64 %168, i64* %172, align 8
  %173 = load i64*, i64** @FT2, align 8
  %174 = load i32, i32* %1, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = call i8* @ROTL8(i64 %177)
  %179 = load i8**, i8*** @FT3, align 8
  %180 = load i32, i32* %1, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181
  store i8* %178, i8** %182, align 8
  %183 = load i32*, i32** @RSb, align 8
  %184 = load i32, i32* %1, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %2, align 4
  %188 = load i32, i32* %2, align 4
  %189 = call i64 @MUL(i32 14, i32 %188)
  %190 = load i32, i32* %2, align 4
  %191 = call i64 @MUL(i32 9, i32 %190)
  %192 = shl i64 %191, 8
  %193 = xor i64 %189, %192
  %194 = load i32, i32* %2, align 4
  %195 = call i64 @MUL(i32 13, i32 %194)
  %196 = shl i64 %195, 16
  %197 = xor i64 %193, %196
  %198 = load i32, i32* %2, align 4
  %199 = call i64 @MUL(i32 11, i32 %198)
  %200 = shl i64 %199, 24
  %201 = xor i64 %197, %200
  %202 = load i64*, i64** @RT0, align 8
  %203 = load i32, i32* %1, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  store i64 %201, i64* %205, align 8
  %206 = load i64*, i64** @RT0, align 8
  %207 = load i32, i32* %1, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64, i64* %206, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = call i8* @ROTL8(i64 %210)
  %212 = ptrtoint i8* %211 to i64
  %213 = load i64*, i64** @RT1, align 8
  %214 = load i32, i32* %1, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i64, i64* %213, i64 %215
  store i64 %212, i64* %216, align 8
  %217 = load i64*, i64** @RT1, align 8
  %218 = load i32, i32* %1, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64, i64* %217, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = call i8* @ROTL8(i64 %221)
  %223 = ptrtoint i8* %222 to i64
  %224 = load i64*, i64** @RT2, align 8
  %225 = load i32, i32* %1, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i64, i64* %224, i64 %226
  store i64 %223, i64* %227, align 8
  %228 = load i64*, i64** @RT2, align 8
  %229 = load i32, i32* %1, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %228, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = call i8* @ROTL8(i64 %232)
  %234 = load i8**, i8*** @RT3, align 8
  %235 = load i32, i32* %1, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8*, i8** %234, i64 %236
  store i8* %233, i8** %237, align 8
  br label %238

238:                                              ; preds = %120
  %239 = load i32, i32* %1, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %1, align 4
  br label %117

241:                                              ; preds = %117
  ret void
}

declare dso_local i32 @XTIME(i32) #1

declare dso_local i8* @ROTL8(i64) #1

declare dso_local i64 @MUL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
