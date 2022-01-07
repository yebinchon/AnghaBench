; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd.c_rdpsnd_process_negotiate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd.c_rdpsnd_process_negotiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@False = common dso_local global i64 0, align 8
@True = common dso_local global i64 0, align 8
@MAX_CBSIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cbSize too large for buffer: %d\0A\00", align 1
@MAX_FORMATS = common dso_local global i64 0, align 8
@RDPSND_NEGOTIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32)* @rdpsnd_process_negotiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdpsnd_process_negotiate(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i64, i64* @False, align 8
  store i64 %12, i64* %9, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @in_uint8s(i32 %13, i32 14)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @in_uint16_le(i32 %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @in_uint8s(i32 %18, i32 4)
  %20 = call i64 (...) @wave_out_open()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = call i32 (...) @wave_out_close()
  %24 = load i64, i64* @True, align 8
  store i64 %24, i64* %9, align 8
  br label %25

25:                                               ; preds = %22, %2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = mul i32 18, %30
  %32 = call i64 @s_check_rem(i32 %29, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %139

34:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %135, %34
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %138

39:                                               ; preds = %35
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 %47
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %7, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @in_uint16_le(i32 %49, i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @in_uint16_le(i32 %54, i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @in_uint32_le(i32 %59, i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @in_uint32_le(i32 %64, i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @in_uint16_le(i32 %69, i32 %72)
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @in_uint16_le(i32 %74, i32 %77)
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @in_uint16_le(i32 %79, i32 %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @MAX_CBSIZE, align 4
  %91 = icmp ugt i32 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %39
  %93 = load i32, i32* @stderr, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @fprintf(i32 %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @MAX_CBSIZE, align 4
  store i32 %98, i32* %10, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MAX_CBSIZE, align 4
  %103 = sub i32 %101, %102
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %92, %39
  %105 = load i32, i32* %4, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @in_uint8a(i32 %105, i32 %108, i32 %109)
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @in_uint8s(i32 %111, i32 %112)
  %114 = load i64, i64* %9, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %104
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %118 = call i64 @wave_out_format_supported(%struct.TYPE_9__* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %116
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %123, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @MAX_FORMATS, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %120
  br label %138

133:                                              ; preds = %120
  br label %134

134:                                              ; preds = %133, %116, %104
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %6, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %35

138:                                              ; preds = %132, %35
  br label %139

139:                                              ; preds = %138, %25
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %141 = load i32, i32* @RDPSND_NEGOTIATE, align 4
  %142 = or i32 %141, 512
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = mul i64 18, %146
  %148 = add i64 20, %147
  %149 = trunc i64 %148 to i32
  %150 = call i32 @rdpsnd_init_packet(%struct.TYPE_10__* %140, i32 %142, i32 %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @out_uint32_le(i32 %151, i32 3)
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @out_uint32(i32 %153, i32 -1)
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @out_uint32(i32 %155, i32 0)
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @out_uint16(i32 %157, i32 0)
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = call i32 @out_uint16_le(i32 %159, i32 %164)
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @out_uint8(i32 %166, i32 149)
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @out_uint16_le(i32 %168, i32 2)
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @out_uint8(i32 %170, i32 119)
  store i32 0, i32* %6, align 4
  br label %172

172:                                              ; preds = %220, %139
  %173 = load i32, i32* %6, align 4
  %174 = zext i32 %173 to i64
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ult i64 %174, %178
  br i1 %179, label %180, label %223

180:                                              ; preds = %172
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = load i32, i32* %6, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i64 %186
  store %struct.TYPE_9__* %187, %struct.TYPE_9__** %7, align 8
  %188 = load i32, i32* %8, align 4
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @out_uint16_le(i32 %188, i32 %191)
  %193 = load i32, i32* %8, align 4
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @out_uint16_le(i32 %193, i32 %196)
  %198 = load i32, i32* %8, align 4
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @out_uint32_le(i32 %198, i32 %201)
  %203 = load i32, i32* %8, align 4
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @out_uint32_le(i32 %203, i32 %206)
  %208 = load i32, i32* %8, align 4
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @out_uint16_le(i32 %208, i32 %211)
  %213 = load i32, i32* %8, align 4
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @out_uint16_le(i32 %213, i32 %216)
  %218 = load i32, i32* %8, align 4
  %219 = call i32 @out_uint16(i32 %218, i32 0)
  br label %220

220:                                              ; preds = %180
  %221 = load i32, i32* %6, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %6, align 4
  br label %172

223:                                              ; preds = %172
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @s_mark_end(i32 %224)
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %227 = load i32, i32* %8, align 4
  %228 = call i32 @rdpsnd_send(%struct.TYPE_10__* %226, i32 %227)
  ret void
}

declare dso_local i32 @in_uint8s(i32, i32) #1

declare dso_local i32 @in_uint16_le(i32, i32) #1

declare dso_local i64 @wave_out_open(...) #1

declare dso_local i32 @wave_out_close(...) #1

declare dso_local i64 @s_check_rem(i32, i32) #1

declare dso_local i32 @in_uint32_le(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @in_uint8a(i32, i32, i32) #1

declare dso_local i64 @wave_out_format_supported(%struct.TYPE_9__*) #1

declare dso_local i32 @rdpsnd_init_packet(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @out_uint32_le(i32, i32) #1

declare dso_local i32 @out_uint32(i32, i32) #1

declare dso_local i32 @out_uint16(i32, i32) #1

declare dso_local i32 @out_uint16_le(i32, i32) #1

declare dso_local i32 @out_uint8(i32, i32) #1

declare dso_local i32 @s_mark_end(i32) #1

declare dso_local i32 @rdpsnd_send(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
