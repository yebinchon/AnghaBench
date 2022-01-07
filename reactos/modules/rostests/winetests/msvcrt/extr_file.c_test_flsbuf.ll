; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_flsbuf.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_flsbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i32 }

@test_flsbuf.bufmodes = internal constant [2 x i32] [i32 129, i32 128], align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"wne\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"_flsbuf(0,tempfh) with bufmode %x expected %x got %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"_flsbuf(0xff,tempfh) with bufmode %x expected %x got %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"_flsbuf(0xffffffff,tempfh) with bufmode %x expected %x got %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"_flsbuf(0xab,tempfh) with bufmode %x expected 0xab got %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"tempfh->_base[1] should not be changed (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [50 x i8] c"_flsbuf(0,tempfh) on r/o file expected %x got %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"_cnt on freshly opened file was %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"_cnt on unbuffered file was %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"_bufsiz = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"_flsbuf('Q',tempfh) expected %x got %x\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"after unbuf _flsbuf, _cnt was %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"first byte should be 'Q'\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"there should only be one byte\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_flsbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_flsbuf() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i8* @_tempnam(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %6, i8** %1, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %95, %0
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @test_flsbuf.bufmodes, i64 0, i64 0))
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %98

11:                                               ; preds = %7
  %12 = load i8*, i8** %1, align 8
  %13 = call %struct.TYPE_9__* @fopen(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %2, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* @test_flsbuf.bufmodes, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @setvbuf(%struct.TYPE_9__* %14, i32* null, i32 %18, i32 2048)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = call i32 @_flsbuf(i8 signext 0, %struct.TYPE_9__* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 0, %22
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* @test_flsbuf.bufmodes, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %28, i32 0, i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = call i32 @_flsbuf(i8 signext -1, %struct.TYPE_9__* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 255, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* @test_flsbuf.bufmodes, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %39, i32 255, i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = call i32 @_flsbuf(i8 signext -1, %struct.TYPE_9__* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 255, %44
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* @test_flsbuf.bufmodes, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %50, i32 255, i32 %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %92

57:                                               ; preds = %11
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = call i32 @fputc(i8 signext 120, %struct.TYPE_9__* %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  store i32 -1, i32* %61, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8 97, i8* %65, align 1
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %67 = call i32 @_flsbuf(i8 signext -85, %struct.TYPE_9__* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, 171
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* @test_flsbuf.bufmodes, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 97
  %84 = zext i1 %83 to i32
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %57, %11
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = call i32 @fclose(%struct.TYPE_9__* %93)
  br label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %7

98:                                               ; preds = %7
  %99 = load i8*, i8** %1, align 8
  %100 = call %struct.TYPE_9__* @fopen(i8* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store %struct.TYPE_9__* %100, %struct.TYPE_9__** %2, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %102 = call i32 @_flsbuf(i8 signext 0, %struct.TYPE_9__* %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* @EOF, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* @EOF, align 4
  %108 = load i32, i32* %4, align 4
  %109 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 %107, i32 %108)
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %111 = call i32 @fclose(%struct.TYPE_9__* %110)
  %112 = load i8*, i8** %1, align 8
  %113 = call %struct.TYPE_9__* @fopen(i8* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store %struct.TYPE_9__* %113, %struct.TYPE_9__** %2, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 0
  %118 = zext i1 %117 to i32
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %121)
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %124 = call i32 @setbuf(%struct.TYPE_9__* %123, i32* null)
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 0
  %129 = zext i1 %128 to i32
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %132)
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 2
  %138 = zext i1 %137 to i32
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %141)
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  store i32 1234, i32* %144, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %146 = call i32 @_flsbuf(i8 signext 81, %struct.TYPE_9__* %145)
  store i32 %146, i32* %4, align 4
  %147 = load i32, i32* %4, align 4
  %148 = icmp eq i32 81, %147
  %149 = zext i1 %148 to i32
  %150 = load i32, i32* %4, align 4
  %151 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i32 81, i32 %150)
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, 0
  %156 = zext i1 %155 to i32
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i32 %159)
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %162 = call i32 @fclose(%struct.TYPE_9__* %161)
  %163 = load i8*, i8** %1, align 8
  %164 = call %struct.TYPE_9__* @fopen(i8* %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  store %struct.TYPE_9__* %164, %struct.TYPE_9__** %2, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %166 = call i32 @fgetc(%struct.TYPE_9__* %165)
  store i32 %166, i32* %3, align 4
  %167 = load i32, i32* %3, align 4
  %168 = icmp eq i32 %167, 81
  %169 = zext i1 %168 to i32
  %170 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0))
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %172 = call i32 @fgetc(%struct.TYPE_9__* %171)
  store i32 %172, i32* %3, align 4
  %173 = load i32, i32* %3, align 4
  %174 = load i32, i32* @EOF, align 4
  %175 = icmp eq i32 %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 (i32, i8*, ...) @ok(i32 %176, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0))
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %179 = call i32 @fclose(%struct.TYPE_9__* %178)
  %180 = load i8*, i8** %1, align 8
  %181 = call i32 @unlink(i8* %180)
  %182 = load i8*, i8** %1, align 8
  %183 = call i32 @free(i8* %182)
  ret void
}

declare dso_local i8* @_tempnam(i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.TYPE_9__* @fopen(i8*, i8*) #1

declare dso_local i32 @setvbuf(%struct.TYPE_9__*, i32*, i32, i32) #1

declare dso_local i32 @_flsbuf(i8 signext, %struct.TYPE_9__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @fputc(i8 signext, %struct.TYPE_9__*) #1

declare dso_local i32 @fclose(%struct.TYPE_9__*) #1

declare dso_local i32 @setbuf(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @fgetc(%struct.TYPE_9__*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
