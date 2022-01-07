; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_rc2.c_rc2_ecb_decrypt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_rc2.c_rc2_ecb_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rc2_ecb_decrypt(i8* %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %11, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 7
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl i32 %19, 8
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 6
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = add i32 %20, %24
  store i32 %25, i32* %7, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 5
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 8
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 4
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = add i32 %30, %34
  store i32 %35, i32* %8, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %39, 8
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = add i32 %40, %44
  store i32 %45, i32* %9, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = shl i32 %49, 8
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = add i32 %50, %54
  store i32 %55, i32* %10, align 4
  store i32 15, i32* %12, align 4
  br label %56

56:                                               ; preds = %199, %3
  %57 = load i32, i32* %12, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %202

59:                                               ; preds = %56
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %12, align 4
  %64 = icmp eq i32 %63, 10
  br i1 %64, label %65, label %102

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %7, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, 63
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = sub i32 %66, %72
  %74 = and i32 %73, 65535
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, 63
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sub i32 %75, %81
  %83 = and i32 %82, 65535
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %10, align 4
  %87 = and i32 %86, 63
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sub i32 %84, %90
  %92 = and i32 %91, 65535
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* %7, align 4
  %96 = and i32 %95, 63
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = sub i32 %93, %99
  %101 = and i32 %100, 65535
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %65, %62
  %103 = load i32, i32* %7, align 4
  %104 = shl i32 %103, 11
  %105 = load i32, i32* %7, align 4
  %106 = lshr i32 %105, 5
  %107 = or i32 %104, %106
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %8, align 4
  %111 = xor i32 %110, -1
  %112 = and i32 %109, %111
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %8, align 4
  %115 = and i32 %113, %114
  %116 = add i32 %112, %115
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %12, align 4
  %119 = mul nsw i32 4, %118
  %120 = add nsw i32 %119, 3
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %117, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = add i32 %116, %123
  %125 = sub i32 %108, %124
  %126 = and i32 %125, 65535
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = shl i32 %127, 13
  %129 = load i32, i32* %8, align 4
  %130 = lshr i32 %129, 3
  %131 = or i32 %128, %130
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %9, align 4
  %135 = xor i32 %134, -1
  %136 = and i32 %133, %135
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %9, align 4
  %139 = and i32 %137, %138
  %140 = add i32 %136, %139
  %141 = load i32*, i32** %11, align 8
  %142 = load i32, i32* %12, align 4
  %143 = mul nsw i32 4, %142
  %144 = add nsw i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = add i32 %140, %147
  %149 = sub i32 %132, %148
  %150 = and i32 %149, 65535
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %9, align 4
  %152 = shl i32 %151, 14
  %153 = load i32, i32* %9, align 4
  %154 = lshr i32 %153, 2
  %155 = or i32 %152, %154
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %10, align 4
  %159 = xor i32 %158, -1
  %160 = and i32 %157, %159
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %10, align 4
  %163 = and i32 %161, %162
  %164 = add i32 %160, %163
  %165 = load i32*, i32** %11, align 8
  %166 = load i32, i32* %12, align 4
  %167 = mul nsw i32 4, %166
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %165, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = add i32 %164, %171
  %173 = sub i32 %156, %172
  %174 = and i32 %173, 65535
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %10, align 4
  %176 = shl i32 %175, 15
  %177 = load i32, i32* %10, align 4
  %178 = lshr i32 %177, 1
  %179 = or i32 %176, %178
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %7, align 4
  %183 = xor i32 %182, -1
  %184 = and i32 %181, %183
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* %7, align 4
  %187 = and i32 %185, %186
  %188 = add i32 %184, %187
  %189 = load i32*, i32** %11, align 8
  %190 = load i32, i32* %12, align 4
  %191 = mul nsw i32 4, %190
  %192 = add nsw i32 %191, 0
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %189, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = add i32 %188, %195
  %197 = sub i32 %180, %196
  %198 = and i32 %197, 65535
  store i32 %198, i32* %10, align 4
  br label %199

199:                                              ; preds = %102
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %12, align 4
  br label %56

202:                                              ; preds = %56
  %203 = load i32, i32* %10, align 4
  %204 = trunc i32 %203 to i8
  %205 = load i8*, i8** %5, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 0
  store i8 %204, i8* %206, align 1
  %207 = load i32, i32* %10, align 4
  %208 = lshr i32 %207, 8
  %209 = trunc i32 %208 to i8
  %210 = load i8*, i8** %5, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 1
  store i8 %209, i8* %211, align 1
  %212 = load i32, i32* %9, align 4
  %213 = trunc i32 %212 to i8
  %214 = load i8*, i8** %5, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 2
  store i8 %213, i8* %215, align 1
  %216 = load i32, i32* %9, align 4
  %217 = lshr i32 %216, 8
  %218 = trunc i32 %217 to i8
  %219 = load i8*, i8** %5, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 3
  store i8 %218, i8* %220, align 1
  %221 = load i32, i32* %8, align 4
  %222 = trunc i32 %221 to i8
  %223 = load i8*, i8** %5, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 4
  store i8 %222, i8* %224, align 1
  %225 = load i32, i32* %8, align 4
  %226 = lshr i32 %225, 8
  %227 = trunc i32 %226 to i8
  %228 = load i8*, i8** %5, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 5
  store i8 %227, i8* %229, align 1
  %230 = load i32, i32* %7, align 4
  %231 = trunc i32 %230 to i8
  %232 = load i8*, i8** %5, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 6
  store i8 %231, i8* %233, align 1
  %234 = load i32, i32* %7, align 4
  %235 = lshr i32 %234, 8
  %236 = trunc i32 %235 to i8
  %237 = load i8*, i8** %5, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 7
  store i8 %236, i8* %238, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
