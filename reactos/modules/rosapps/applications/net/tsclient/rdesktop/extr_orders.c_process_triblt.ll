; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_triblt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_triblt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [74 x i8] c"TRIBLT(op=0x%x,x=%d,y=%d,cx=%d,cy=%d,id=%d,idx=%d,bs=%d,bg=0x%x,fg=0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_5__*, i32, i32)* @process_triblt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_triblt(i32* %0, i32 %1, %struct.TYPE_5__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %9, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 11
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @in_uint8(i32 %16, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 13
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @in_uint8(i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %15, %5
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 2
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @rdp_in_coord(i32 %31, i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %30, %26
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 7
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @rdp_in_coord(i32 %41, i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %36
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 6
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @rdp_in_coord(i32 %51, i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %46
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, 16
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 5
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @rdp_in_coord(i32 %61, i32* %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %56
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, 32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @in_uint8(i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %70, %66
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, 64
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @rdp_in_coord(i32 %81, i32* %83, i32 %84)
  br label %86

86:                                               ; preds = %80, %76
  %87 = load i32, i32* %9, align 4
  %88 = and i32 %87, 128
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @rdp_in_coord(i32 %91, i32* %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %86
  %97 = load i32, i32* %9, align 4
  %98 = and i32 %97, 256
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = call i32 @rdp_in_colour(i32 %101, i32* %103)
  br label %105

105:                                              ; preds = %100, %96
  %106 = load i32, i32* %9, align 4
  %107 = and i32 %106, 512
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = call i32 @rdp_in_colour(i32 %110, i32* %112)
  br label %114

114:                                              ; preds = %109, %105
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = load i32, i32* %9, align 4
  %119 = ashr i32 %118, 10
  %120 = call i32 @rdp_parse_brush(i32 %115, %struct.TYPE_6__* %117, i32 %119)
  %121 = load i32, i32* %9, align 4
  %122 = and i32 %121, 32768
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %114
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 10
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @in_uint16_le(i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %124, %114
  %131 = load i32, i32* %9, align 4
  %132 = and i32 %131, 65536
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 12
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @in_uint16_le(i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %134, %130
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 9
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 11
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 10
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = inttoptr i64 %172 to i8*
  %174 = call i32 @DEBUG(i8* %173)
  %175 = load i32*, i32** %6, align 8
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 11
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 10
  %181 = load i32, i32* %180, align 4
  %182 = call i32* @cache_get_bitmap(i32* %175, i32 %178, i32 %181)
  store i32* %182, i32** %11, align 8
  %183 = load i32*, i32** %11, align 8
  %184 = icmp eq i32* %183, null
  br i1 %184, label %185, label %186

185:                                              ; preds = %140
  br label %219

186:                                              ; preds = %140
  %187 = load i32*, i32** %6, align 8
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 9
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %11, align 8
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @ui_triblt(i32* %187, i32 %190, i32 %193, i32 %196, i32 %199, i32 %202, i32* %203, i32 %206, i32 %209, %struct.TYPE_6__* %211, i32 %214, i32 %217)
  br label %219

219:                                              ; preds = %186, %185
  ret void
}

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @rdp_in_coord(i32, i32*, i32) #1

declare dso_local i32 @rdp_in_colour(i32, i32*) #1

declare dso_local i32 @rdp_parse_brush(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @in_uint16_le(i32, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32* @cache_get_bitmap(i32*, i32, i32) #1

declare dso_local i32 @ui_triblt(i32*, i32, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
