; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/startup/extr_pseudo-reloc.c_do_pseudo_reloc.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/startup/extr_pseudo-reloc.c_do_pseudo_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@RP_VERSION_V1 = common dso_local global i64 0, align 8
@RP_VERSION_V2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"  Unknown pseudo relocation protocol version %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"  Unknown pseudo relocation bit size %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @do_pseudo_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_pseudo_reloc(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = ptrtoint i8* %14 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %10, align 8
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %202

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 12
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RP_VERSION_V1, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 1
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %10, align 8
  br label %47

47:                                               ; preds = %44, %38, %33, %28, %25
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %88

57:                                               ; preds = %52, %47
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %59 = bitcast %struct.TYPE_4__* %58 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %12, align 8
  br label %60

60:                                               ; preds = %84, %57
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = bitcast i8* %62 to %struct.TYPE_6__*
  %64 = icmp ult %struct.TYPE_6__* %61, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %60
  %66 = load i8*, i8** %6, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %75, %78
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 @__write_memory(i8* %82, i32* %13, i32 4)
  br label %84

84:                                               ; preds = %65
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 1
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %12, align 8
  br label %60

87:                                               ; preds = %60
  br label %202

88:                                               ; preds = %52
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @RP_VERSION_V2, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @__report_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %202

100:                                              ; preds = %88
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 1
  %103 = bitcast %struct.TYPE_4__* %102 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %103, %struct.TYPE_5__** %11, align 8
  br label %104

104:                                              ; preds = %199, %100
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = bitcast i8* %106 to %struct.TYPE_5__*
  %108 = icmp ult %struct.TYPE_5__* %105, %107
  br i1 %108, label %109, label %202

109:                                              ; preds = %104
  %110 = load i8*, i8** %6, align 8
  %111 = ptrtoint i8* %110 to i32
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %111, %114
  store i32 %115, i32* %9, align 4
  %116 = load i8*, i8** %6, align 8
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %117, %120
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i32*
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %7, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 255
  switch i32 %129, label %161 [
    i32 8, label %130
    i32 16, label %143
    i32 32, label %156
  ]

130:                                              ; preds = %109
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to i8*
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = and i32 %136, 128
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %130
  %140 = load i32, i32* %8, align 4
  %141 = or i32 %140, -256
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %139, %130
  br label %167

143:                                              ; preds = %109
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = inttoptr i64 %145 to i16*
  %147 = load i16, i16* %146, align 2
  %148 = zext i16 %147 to i32
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = and i32 %149, 32768
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %143
  %153 = load i32, i32* %8, align 4
  %154 = or i32 %153, -65536
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %152, %143
  br label %167

156:                                              ; preds = %109
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = inttoptr i64 %158 to i32*
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %8, align 4
  br label %167

161:                                              ; preds = %109
  store i32 0, i32* %8, align 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, 255
  %166 = call i32 @__report_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %161, %156, %155, %142
  %168 = load i8*, i8** %6, align 8
  %169 = ptrtoint i8* %168 to i32
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %169, %172
  %174 = load i32, i32* %8, align 4
  %175 = sub nsw i32 %174, %173
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %8, align 4
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, 255
  switch i32 %182, label %198 [
    i32 8, label %183
    i32 16, label %188
    i32 32, label %193
  ]

183:                                              ; preds = %167
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = inttoptr i64 %185 to i8*
  %187 = call i32 @__write_memory(i8* %186, i32* %8, i32 1)
  br label %198

188:                                              ; preds = %167
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = inttoptr i64 %190 to i8*
  %192 = call i32 @__write_memory(i8* %191, i32* %8, i32 2)
  br label %198

193:                                              ; preds = %167
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = inttoptr i64 %195 to i8*
  %197 = call i32 @__write_memory(i8* %196, i32* %8, i32 4)
  br label %198

198:                                              ; preds = %167, %193, %188, %183
  br label %199

199:                                              ; preds = %198
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 1
  store %struct.TYPE_5__* %201, %struct.TYPE_5__** %11, align 8
  br label %104

202:                                              ; preds = %24, %87, %94, %104
  ret void
}

declare dso_local i32 @__write_memory(i8*, i32*, i32) #1

declare dso_local i32 @__report_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
