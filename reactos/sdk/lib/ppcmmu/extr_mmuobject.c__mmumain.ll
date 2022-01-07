; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_mmuobject.c__mmumain.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_mmuobject.c__mmumain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }

@callback = common dso_local global i64* null, align 8
@FirstUsablePage = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_mmumain(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp sge i32 %16, 256
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i8*, i8** %11, align 8
  br label %22

20:                                               ; preds = %5
  %21 = load i8*, i8** %8, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i8* [ %19, %18 ], [ %21, %20 ]
  %24 = bitcast i8* %23 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %12, align 8
  store i32 0, i32* %13, align 4
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %159 [
    i32 3, label %26
    i32 4, label %38
    i32 5, label %50
    i32 0, label %67
    i32 2, label %67
    i32 6, label %67
    i32 7, label %67
    i32 8, label %67
    i32 9, label %67
    i32 10, label %67
    i32 12, label %67
    i32 32, label %67
    i32 256, label %71
    i32 257, label %77
    i32 258, label %82
    i32 259, label %87
    i32 260, label %95
    i32 261, label %110
    i32 262, label %115
    i32 263, label %117
    i32 264, label %121
    i32 265, label %125
    i32 266, label %127
    i32 267, label %133
    i32 268, label %139
    i32 269, label %141
    i32 270, label %147
    i32 512, label %149
    i32 513, label %154
  ]

26:                                               ; preds = %22
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ptegreload(%struct.TYPE_7__* %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %36 = call i32 @trapcallback(i32 %34, %struct.TYPE_7__* %35)
  br label %37

37:                                               ; preds = %33, %26
  br label %161

38:                                               ; preds = %22
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ptegreload(%struct.TYPE_7__* %39, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %48 = call i32 @trapcallback(i32 %46, %struct.TYPE_7__* %47)
  br label %49

49:                                               ; preds = %45, %38
  br label %161

50:                                               ; preds = %22
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %53 = call i32 @SerialInterrupt(i32 %51, %struct.TYPE_7__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %50
  %56 = load i64*, i64** @callback, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %65 = call i32 @trapcallback(i32 %63, %struct.TYPE_7__* %64)
  br label %66

66:                                               ; preds = %62, %55, %50
  br label %161

67:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %70 = call i32 @trapcallback(i32 %68, %struct.TYPE_7__* %69)
  br label %161

71:                                               ; preds = %22
  %72 = call i32 (...) @initme()
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, 32768
  store i32 %76, i32* %74, align 4
  br label %161

77:                                               ; preds = %22
  %78 = load i8*, i8** %8, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = ptrtoint i8* %79 to i32
  %81 = call i32 @mmuaddpage(i8* %78, i32 %80)
  store i32 %81, i32* %13, align 4
  br label %161

82:                                               ; preds = %22
  %83 = load i8*, i8** %8, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = ptrtoint i8* %84 to i32
  %86 = call i32 @mmudelpage(i8* %83, i32 %85)
  br label %161

87:                                               ; preds = %22
  %88 = load i8*, i8** %8, align 8
  %89 = ptrtoint i8* %88 to i32
  %90 = load i8*, i8** %9, align 8
  %91 = ptrtoint i8* %90 to i32
  %92 = load i8*, i8** %10, align 8
  %93 = ptrtoint i8* %92 to i32
  %94 = call i32 @mmusetvsid(i32 %89, i32 %91, i32 %93)
  br label %161

95:                                               ; preds = %22
  %96 = load i64*, i64** @callback, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = ptrtoint i8* %97 to i32
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %96, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %13, align 4
  %103 = load i8*, i8** %9, align 8
  %104 = ptrtoint i8* %103 to i64
  %105 = load i64*, i64** @callback, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = ptrtoint i8* %106 to i32
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %105, i64 %108
  store i64 %104, i64* %109, align 8
  br label %161

110:                                              ; preds = %22
  %111 = load i8*, i8** %8, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = ptrtoint i8* %112 to i32
  %114 = call i32 @mmugetpage(i8* %111, i32 %113)
  br label %161

115:                                              ; preds = %22
  %116 = call i32 (...) @mmunitest()
  store i32 %116, i32* %13, align 4
  br label %161

117:                                              ; preds = %22
  %118 = load i8*, i8** %8, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = call i32 @callkernel(i8* %118, i8* %119)
  br label %161

121:                                              ; preds = %22
  %122 = load i8*, i8** %8, align 8
  %123 = ptrtoint i8* %122 to i32
  %124 = call i32 @mmusetramsize(i32 %123)
  br label %161

125:                                              ; preds = %22
  %126 = load i32, i32* @FirstUsablePage, align 4
  store i32 %126, i32* %6, align 4
  br label %199

127:                                              ; preds = %22
  %128 = load i8*, i8** %8, align 8
  %129 = ptrtoint i8* %128 to i32
  %130 = load i8*, i8** %9, align 8
  %131 = ptrtoint i8* %130 to i32
  %132 = call i32 @mmuallocvsid(i32 %129, i32 %131)
  br label %161

133:                                              ; preds = %22
  %134 = load i8*, i8** %8, align 8
  %135 = ptrtoint i8* %134 to i32
  %136 = load i8*, i8** %9, align 8
  %137 = ptrtoint i8* %136 to i32
  %138 = call i32 @mmufreevsid(i32 %135, i32 %137)
  br label %161

139:                                              ; preds = %22
  %140 = call i32 (...) @mmunewpage()
  store i32 %140, i32* %13, align 4
  br label %161

141:                                              ; preds = %22
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %143 = call i32 @copy(%struct.TYPE_7__* %142, i8* inttoptr (i64 61504 to i8*), i32 12)
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %145 = ptrtoint %struct.TYPE_7__* %144 to i32
  %146 = sub nsw i32 %145, 16
  call void asm sideeffect "mr 1,$0\0A\09b trap_finish_start", "r,~{dirflag},~{fpsr},~{flags}"(i32 %146) #2, !srcloc !2
  br label %161

147:                                              ; preds = %22
  %148 = call i32 (...) @dumpmap()
  br label %161

149:                                              ; preds = %22
  %150 = load i8*, i8** %8, align 8
  %151 = ptrtoint i8* %150 to i32
  %152 = load i8*, i8** %9, align 8
  %153 = call i32 @SerialSetUp(i32 %151, i8* %152, i32 9600)
  br label %161

154:                                              ; preds = %22
  %155 = load i8*, i8** %8, align 8
  %156 = ptrtoint i8* %155 to i32
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %158 = call i32 @TakeException(i32 %156, %struct.TYPE_7__* %157)
  br label %161

159:                                              ; preds = %22
  br label %160

160:                                              ; preds = %159, %160
  br label %160

161:                                              ; preds = %154, %149, %147, %141, %139, %133, %127, %121, %117, %115, %110, %95, %87, %82, %77, %71, %67, %66, %49, %37
  %162 = load i32, i32* %7, align 4
  %163 = icmp sge i32 %162, 256
  br i1 %163, label %164, label %197

164:                                              ; preds = %161
  %165 = call i32 asm "mfmsr $0", "=r,~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !3
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = and i32 %166, -49
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %14, align 4
  call void asm sideeffect "mtmsr $0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %168) #2, !srcloc !4
  store i32 0, i32* %15, align 4
  br label %169

169:                                              ; preds = %193, %164
  %170 = load i32, i32* %15, align 4
  %171 = icmp slt i32 %170, 4
  br i1 %171, label %172, label %196

172:                                              ; preds = %169
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %15, align 4
  %175 = mul nsw i32 %174, 16
  %176 = add nsw i32 61440, %175
  %177 = call i32 @GetPhys(i32 %176)
  %178 = load i32, i32* %15, align 4
  %179 = mul nsw i32 %178, 16
  %180 = add nsw i32 61444, %179
  %181 = call i32 @GetPhys(i32 %180)
  %182 = call i32 @SetBat(i32 %173, i32 0, i32 %177, i32 %181)
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %15, align 4
  %185 = mul nsw i32 %184, 16
  %186 = add nsw i32 61448, %185
  %187 = call i32 @GetPhys(i32 %186)
  %188 = load i32, i32* %15, align 4
  %189 = mul nsw i32 %188, 16
  %190 = add nsw i32 61452, %189
  %191 = call i32 @GetPhys(i32 %190)
  %192 = call i32 @SetBat(i32 %183, i32 1, i32 %187, i32 %191)
  br label %193

193:                                              ; preds = %172
  %194 = load i32, i32* %15, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %15, align 4
  br label %169

196:                                              ; preds = %169
  br label %197

197:                                              ; preds = %196, %161
  %198 = load i32, i32* %13, align 4
  store i32 %198, i32* %6, align 4
  br label %199

199:                                              ; preds = %197, %125
  %200 = load i32, i32* %6, align 4
  ret i32 %200
}

declare dso_local i32 @ptegreload(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @trapcallback(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @SerialInterrupt(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @initme(...) #1

declare dso_local i32 @mmuaddpage(i8*, i32) #1

declare dso_local i32 @mmudelpage(i8*, i32) #1

declare dso_local i32 @mmusetvsid(i32, i32, i32) #1

declare dso_local i32 @mmugetpage(i8*, i32) #1

declare dso_local i32 @mmunitest(...) #1

declare dso_local i32 @callkernel(i8*, i8*) #1

declare dso_local i32 @mmusetramsize(i32) #1

declare dso_local i32 @mmuallocvsid(i32, i32) #1

declare dso_local i32 @mmufreevsid(i32, i32) #1

declare dso_local i32 @mmunewpage(...) #1

declare dso_local i32 @copy(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @dumpmap(...) #1

declare dso_local i32 @SerialSetUp(i32, i8*, i32) #1

declare dso_local i32 @TakeException(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @SetBat(i32, i32, i32, i32) #1

declare dso_local i32 @GetPhys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 2628, i32 2638}
!3 = !{i32 3008}
!4 = !{i32 3072}
